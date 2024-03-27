-- Bước 1: Tạo bảng "products"
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id INT PRIMARY KEY IDENTITY(1,1),
    productname NVARCHAR(255),
    price NUMERIC,
    quantity INTEGER,
    promotion INTEGER
);


-- Bước 2: Đưa dữ liệu từ file CSV vào bảng "products"
BULK INSERT products
FROM 'G:\\HK2\\Python\\Python\\Orion_ChatBot\\product_data.csv'
WITH
(
    FIELDTERMINATOR = ',',      -- Phân tách các trường bởi dấu phẩy
    ROWTERMINATOR = '\n',       -- Kết thúc hàng bởi dấu xuống dòng
    FIRSTROW = 2,               -- Bỏ qua hàng đầu tiên nếu nó chứa tiêu đề
	CODEPAGE = '65001'          -- Mã bảng ký tự cho UTF-8
);
