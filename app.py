from flask import Flask, render_template, request
from collections import defaultdict
import openai
import time
import os
import pyodbc
import re

app = Flask(__name__, static_folder='templates')

#Khai báo đường dẫn các file:
key_file_path = r'key.txt'
assistant_id_file_path = r'assistant_id.txt'

# Thiết lập các thông tin kết nối
server = 'PC-LONG\SQLEXPRESS'
database = 'orion_chatbot'

# Tạo chuỗi kết nối
connection_string = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes'

# Kết nối đến cơ sở dữ liệu
conn = pyodbc.connect(connection_string)

# Đọc bảng bất kì từ database
def read_table_data(connection, table_name):
    data = []
    cursor = connection.cursor()
    cursor.execute(f'SELECT * FROM {table_name}')
    columns = [column[0] for column in cursor.description]  # Lấy tên cột
    for row in cursor.fetchall():
        row_data = {}
        for i in range(len(columns)):
            row_data[columns[i]] = row[i]
        data.append(row_data)
    return data

# Sử dụng hàm để đọc dữ liệu từ bất kỳ bảng nào
product_data = read_table_data(conn, 'products')

# Hàm liệt kê sản phẩm
def format_product_list(product_data):
    if product_data:
        products_list = "\n".join([f"- {product.get('productname', 'Không có thông tin về tên sản phẩm')}" for product in product_data])
        response = f"Dưới đây là toàn bộ sản phẩm có trong cửa hàng của chúng tôi:\n{products_list}"
    else:
        response = "Xin lỗi, hiện tại không có sản phẩm nào trong cửa hàng của chúng tôi."
    return response


# Định nghĩa hàm tìm sản phẩm giảm giá
def find_discounted_products(product_data):
    discounted_products = []
    for product in product_data:
        promotion = int(product.get('promotion', 0))
        if promotion > 20:
            discounted_products.append(product)
    
    if discounted_products:
        response = "Dưới đây là một số sản phẩm đang được giảm giá trong cửa hàng của chúng tôi:\n"
        response += "\n".join([f"- {product['productname']}" for product in discounted_products if 'productname' in product])
    else:
        response = "Xin lỗi, hiện tại chúng tôi không có thông tin về sản phẩm đang giảm giá."
    
    return response

# Hàm để xử lý câu hỏi của người dùng và trả lời
def process_user_input(user_input, product_data):
    user_input = user_input.lower()
    
    # Tạo một từ điển chứa các pattern và các hành động tương ứng
    patterns_actions = {
        'sản phẩm giảm giá': find_discounted_products,
        # Thêm các pattern và hành động mới ở đây nếu cần
    }

    # Tìm pattern phù hợp trong câu hỏi của người dùng
    matched_action = None
    for pattern, action in patterns_actions.items():
        if re.search(pattern, user_input):
            matched_action = action
            break
    
    # Nếu không tìm thấy pattern phù hợp
    if matched_action is None:
        response = "Xin lỗi, tôi không hiểu câu hỏi của bạn. Bạn có thể nêu câu hỏi khác không?"
    else:
        # Thực thi hành động tương ứng với pattern đã tìm thấy
        result = matched_action(product_data)
        if result:
            response = result
        else:
            response = "Xin lỗi, hiện tại chúng tôi không có thông tin về sản phẩm nổi bật."
    
    return response

# Lấy API để kết nối tới OpenAI
def get_openai_key():
    try:
        with open(key_file_path) as f:
            return f.read().strip()
    except FileNotFoundError:
        print("Không tìm thấy tệp key.txt.")
        return None
    
# Tạo kết nối tới OpenAI
openai_client = openai.OpenAI(api_key=get_openai_key())
openai_threads = openai_client.beta.threads
openai_assistants = openai_client.beta.assistants

# Tạo mới trợ lý ảo
def create_assistant():
    assistant = openai_assistants.create(
        name="Orion",
        instructions="Đây là trợ lý ảo giúp bạn giải đáp những vấn đề bạn đang gặp phải !",
        tools=[],
        model="gpt-3.5-turbo"
    )
    return assistant

# Lấy ID của trợ lý ảo
def get_assistant_id():
    if os.path.exists(assistant_id_file_path):
        with open(assistant_id_file_path, 'r') as f:
            return f.read().strip()
    return None

# Lưu ID của trợ lý ảo
def save_assistant_id(assistant_id):
    with open(assistant_id_file_path, 'w') as f:
        f.write(assistant_id)

# Lấy ID đã có hoặc tạo mới ID nếu chưa có
def get_or_create_assistant():
    assistant_id = get_assistant_id()
    if assistant_id:
        try:
            return openai_assistants.retrieve(assistant_id)
        except openai.OpenAIError:
            print("Không tìm thấy trợ lý có ID đã lưu. Tạo một cái mới.")

    assistant = create_assistant()
    save_assistant_id(assistant.id)
    return assistant

# Khởi tạo một biến toàn cục để lưu trữ trạng thái của trò chuyện và trợ lý ảo
conversation_state = {'thread_id': None, 'run_id': None}

@app.route('/')
def home():
    # Trả về trang chính của ứng dụng
    return render_template('app.html')

@app.route('/chat', methods=['POST'])
def chat():
    global conversation_state  # Sử dụng biến toàn cục
    
    user_input = request.form.get('user_input')  # Lấy user_input từ form gửi đi từ trang web
    assistant = get_or_create_assistant()
    
    # Nếu chưa có trạng thái trò chuyện, tạo một thread mới và lưu trạng thái
    if not conversation_state['thread_id']:
        thread = openai_threads.create()
        conversation_state['thread_id'] = thread.id
    
    # Gửi câu hỏi từ người dùng và nhận câu trả lời từ trợ lý ảo
    openai_threads.messages.create(
        thread_id=conversation_state['thread_id'],
        role="user",
        content=user_input
    )
    
    run = openai_threads.runs.create(
        thread_id=conversation_state['thread_id'],
        assistant_id=assistant.id,
    )

    is_running = True
    while is_running:
        run_status = openai_threads.runs.retrieve(thread_id=conversation_state['thread_id'], run_id=run.id)
        is_running = run_status.status != "completed"
        time.sleep(1)

    messages = openai_threads.messages.list(thread_id=conversation_state['thread_id'])
    last_message = [message for message in messages.data if message.run_id == run.id and message.role == "assistant"][-1]
    if last_message:
        response = last_message.content[0].text.value
    else:
        response = "Xin lỗi, tôi không hiểu câu hỏi của bạn. Bạn có thể nêu câu hỏi khác không?"
    
    return response

if __name__ == '__main__':
    app.run(debug=True)

