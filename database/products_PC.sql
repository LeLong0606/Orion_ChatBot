-- Tạo bảng chứa thông tin về MainBoard
CREATE TABLE products_mainboard (
    product_id INT PRIMARY KEY IDENTITY(1,1),
    product_name NVARCHAR(255),
    manufacturer NVARCHAR(255),
    chipset NVARCHAR(255),
    size NVARCHAR(50),
    cpu_support NVARCHAR(255),
    ram_slots INT,
    ram_type NVARCHAR(50),
    usb_ports INT,
    ethernet_ports INT,
    pcie_slots INT,
    storage_support NVARCHAR(255),
    special_features NVARCHAR(MAX)
);

-- Thêm sản phẩm Mainboard
INSERT INTO products_mainboard (product_name, manufacturer, chipset, size, cpu_support, ram_slots, ram_type, usb_ports, ethernet_ports, pcie_slots, storage_support, special_features)
VALUES 
('ASUS ROG Strix Z490-E Gaming', 'ASUS', 'Intel Z490', 'ATX', 'Intel Core 10th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports Aura Sync RGB'),
('Gigabyte B450 AORUS ELITE', 'Gigabyte', 'AMD B450', 'ATX', 'AMD Ryzen 2nd and 3rd Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports RGB Fusion'),
('MSI MPG B550 Gaming Plus', 'MSI', 'AMD B550', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports PCIe 4.0'),
('ASRock B460 Steel Legend', 'ASRock', 'Intel B460', 'ATX', 'Intel Core 10th Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports Polychrome RGB'),
('ASUS ROG Crosshair VIII Hero', 'ASUS', 'AMD X570', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 8, 1, 3, 'SATA, NVMe', 'Supports Aura Sync RGB, WiFi 6'),
('Gigabyte Z490 AORUS Master', 'Gigabyte', 'Intel Z490', 'ATX', 'Intel Core 10th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports RGB Fusion, WiFi 6'),
('MSI MEG X570 GODLIKE', 'MSI', 'AMD X570', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 10, 2, 4, 'SATA, NVMe', 'Supports PCIe 4.0, WiFi 6, 10G LAN'),
('ASRock X570 Taichi', 'ASRock', 'AMD X570', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 8, 1, 3, 'SATA, NVMe', 'Supports Polychrome RGB, WiFi 6'),
('ASUS TUF Gaming B550M-PLUS', 'ASUS', 'AMD B550', 'Micro ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports Aura Sync RGB'),
('Gigabyte B550M DS3H', 'Gigabyte', 'AMD B550', 'Micro ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 6, 1, 1, 'SATA, NVMe', 'Supports RGB Fusion'),
('MSI B450 TOMAHAWK MAX', 'MSI', 'AMD B450', 'ATX', 'AMD Ryzen 1st, 2nd and 3rd Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports DDR4 Boost, Audio Boost, Flash BIOS Button'),
('ASRock B450M PRO4', 'ASRock', 'AMD B450', 'Micro ATX', 'AMD Ryzen 1st, 2nd and 3rd Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports Polychrome RGB'),
('ASUS ROG Strix X570-E Gaming', 'ASUS', 'AMD X570', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 8, 1, 3, 'SATA, NVMe', 'Supports Aura Sync RGB, WiFi 6'),
('Gigabyte Z390 AORUS PRO WIFI', 'Gigabyte', 'Intel Z390', 'ATX', 'Intel Core 8th and 9th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports RGB Fusion, WiFi'),
('MSI MPG Z490 GAMING EDGE WIFI', 'MSI', 'Intel Z490', 'ATX', 'Intel Core 10th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports WiFi 6, LAN Manager, M.2 Shield Frozr'),
('ASRock B450M-HDV R4.0', 'ASRock', 'AMD B450', 'Micro ATX', 'AMD Ryzen 1st, 2nd and 3rd Gen', 2, 'DDR4', 6, 1, 1, 'SATA, NVMe', 'Supports Polychrome RGB'),
('ASUS TUF B360M-PLUS GAMING S', 'ASUS', 'Intel B360', 'Micro ATX', 'Intel Core 8th and 9th Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports Aura Sync RGB'),
('Gigabyte Z390 UD', 'Gigabyte', 'Intel Z390', 'ATX', 'Intel Core 8th and 9th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports RGB Fusion'),
('MSI MAG B550 TOMAHAWK', 'MSI', 'AMD B550', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports PCIe 4.0'),
('ASRock Z390 Phantom Gaming 4', 'ASRock', 'Intel Z390', 'ATX', 'Intel Core 8th and 9th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports Polychrome RGB'),
('ASUS Prime B460-PLUS', 'ASUS', 'Intel B460', 'ATX', 'Intel Core 10th Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports Aura Sync RGB'),
('Gigabyte X570 AORUS ELITE', 'Gigabyte', 'AMD X570', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports RGB Fusion'),
('MSI B450-A PRO MAX', 'MSI', 'AMD B450', 'ATX', 'AMD Ryzen 1st, 2nd and 3rd Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports DDR4 Boost, Audio Boost'),
('ASRock Z490 Phantom Gaming 4', 'ASRock', 'Intel Z490', 'ATX', 'Intel Core 10th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports Polychrome RGB'),
('ASUS ROG Strix B550-F Gaming', 'ASUS', 'AMD B550', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports Aura Sync RGB'),
('Gigabyte B365M DS3H', 'Gigabyte', 'Intel B365', 'Micro ATX', 'Intel Core 8th and 9th Gen', 4, 'DDR4', 6, 1, 1, 'SATA, NVMe', 'Supports RGB Fusion'),
('MSI B450 Gaming Plus MAX', 'MSI', 'AMD B450', 'ATX', 'AMD Ryzen 1st, 2nd and 3rd Gen', 4, 'DDR4', 6, 1, 2, 'SATA, NVMe', 'Supports DDR4 Boost, Audio Boost, Flash BIOS Button'),
('ASRock Z390 Phantom Gaming 4S', 'ASRock', 'Intel Z390', 'ATX', 'Intel Core 8th and 9th Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports Polychrome RGB'),
('ASUS Prime X570-P', 'ASUS', 'AMD X570', 'ATX', 'AMD Ryzen 3rd Gen', 4, 'DDR4', 6, 1, 3, 'SATA, NVMe', 'Supports Aura Sync RGB'),
('Gigabyte B450M S2H', 'Gigabyte', 'AMD B450', 'Micro ATX', 'AMD Ryzen 1st, 2nd and 3rd Gen', 4, 'DDR4', 6, 1, 1, 'SATA, NVMe', 'Supports RGB Fusion');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về CPU
CREATE TABLE products_CPU (
    cpu_id INT PRIMARY KEY IDENTITY(1,1),
    product_name NVARCHAR(255),
    manufacturer NVARCHAR(255),
    architecture NVARCHAR(255),
    cores INT,
    threads INT,
    base_frequency FLOAT,
    boost_frequency FLOAT,
    cache_memory NVARCHAR(255),
    socket NVARCHAR(50),
    power_consumption FLOAT,
    supported_technologies NVARCHAR(MAX)
);

-- Thêm sản phẩm CPU
INSERT INTO products_CPU (product_name, manufacturer, architecture, cores, threads, base_frequency, boost_frequency, cache_memory, socket, power_consumption, supported_technologies)
VALUES 
('Intel Core i9-11900K', 'Intel', 'Rocket Lake', 8, 16, 3.5, 5.3, '16MB', 'LGA1200', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 9 5900', 'AMD', 'Zen 3', 12, 24, 3.0, 4.7, '70MB', 'AM4', 105, 'Simultaneous Multithreading, Precision Boost 2, PCIe 4.0'),
('Intel Core i7-11700K', 'Intel', 'Rocket Lake', 8, 16, 3.6, 5.0, '16MB', 'LGA1200', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 7 5800', 'AMD', 'Zen 3', 8, 16, 3.4, 4.6, '36MB', 'AM4', 105, 'Simultaneous Multithreading, Precision Boost 2, PCIe 4.0'),
('Intel Core i5-11600', 'Intel', 'Rocket Lake', 6, 12, 2.8, 4.8, '12MB', 'LGA1200', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 5 5600', 'AMD', 'Zen 3', 6, 12, 3.3, 4.6, '35MB', 'AM4', 65, 'Simultaneous Multithreading, Precision Boost 2, PCIe 4.0'),
('Intel Core i3-11400', 'Intel', 'Rocket Lake', 6, 12, 2.6, 4.4, '12MB', 'LGA1200', 65, 'Intel Turbo Boost 2.0, Intel Optane Memory Support'),
('AMD Ryzen 3 5300', 'AMD', 'Zen 3', 4, 8, 4.0, 4.2, '6MB', 'AM4', 65, 'Simultaneous Multithreading, Precision Boost 2'),
('Intel Core i9-12900', 'Intel', 'Alder Lake', 8, 16, 2.4, 5.2, '24MB', 'LGA1700', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 9 5950G', 'AMD', 'Zen 3', 16, 32, 3.4, 4.9, '72MB', 'AM4', 105, 'Simultaneous Multithreading, Precision Boost 2, Radeon Graphics'),
('Intel Core i7-12700', 'Intel', 'Alder Lake', 12, 20, 2.6, 5.0, '25MB', 'LGA1700', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 7 5700', 'AMD', 'Zen 3', 8, 16, 3.5, 4.6, '20MB', 'AM4', 65, 'Simultaneous Multithreading, Precision Boost 2, PCIe 4.0'),
('Intel Core i5-12600', 'Intel', 'Alder Lake', 10, 16, 2.9, 4.9, '20MB', 'LGA1700', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 5 5600G', 'AMD', 'Zen 3', 6, 12, 3.9, 4.4, '16MB', 'AM4', 65, 'Simultaneous Multithreading, Precision Boost 2, Radeon Graphics'),
('Intel Core i3-12200', 'Intel', 'Alder Lake', 4, 8, 3.0, 4.2, '6MB', 'LGA1700', 65, 'Intel Turbo Boost 2.0, Intel Optane Memory Support'),
('AMD Ryzen 3 5300X', 'AMD', 'Zen 3', 4, 8, 4.0, 4.2, '6MB', 'AM4', 65, 'Simultaneous Multithreading, Precision Boost 2'),
('Intel Core i9-12600K', 'Intel', 'Alder Lake', 10, 16, 3.7, 4.9, '20MB', 'LGA1700', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 9 5950G', 'AMD', 'Zen 3', 16, 32, 3.4, 4.9, '72MB', 'AM4', 105, 'Simultaneous Multithreading, Precision Boost 2, Radeon Graphics'),
('Intel Core i7-12700', 'Intel', 'Alder Lake', 12, 20, 3.4, 5.0, '25MB', 'LGA1700', 125, 'Hyper-Threading, Turbo Boost 3.0, Intel Optane Memory Support'),
('AMD Ryzen 7 5700', 'AMD', 'Zen 3', 8, 16, 3.5, 4.6, '20MB', 'AM4', 65, 'Simultaneous Multithreading, Precision Boost 2, PCIe 4.0');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về RAM
CREATE TABLE products_RAM (
    ram_id INT PRIMARY KEY IDENTITY(1,1),
    firm_ram VARCHAR(100),
    capacity VARCHAR(50),
    type VARCHAR(50),
    frequency VARCHAR(50),
    latency VARCHAR(50),
    slots INT,
    ecc_support BIT,
    xmp_support BIT,
    voltage VARCHAR(50),
    connector_type VARCHAR(50)
);

-- Thêm sản phẩm RAM
INSERT INTO products_RAM (firm_ram, capacity, type, frequency, latency, slots, ecc_support, xmp_support, voltage, connector_type)
VALUES 
('Kingston', '8GB', 'DDR4', '3200MHz', 'CL16', 2, 0, 1, '1.35V', 'DIMM'),
('Corsair', '16GB', 'DDR4', '3600MHz', 'CL18', 4, 1, 1, '1.2V', 'DIMM'),
('G.Skill', '32GB', 'DDR4', '3200MHz', 'CL16', 4, 1, 1, '1.35V', 'DIMM'),
('Crucial', '8GB', 'DDR4', '2666MHz', 'CL15', 2, 0, 0, '1.2V', 'DIMM'),
('ADATA', '16GB', 'DDR4', '3000MHz', 'CL16', 4, 0, 1, '1.35V', 'DIMM'),
('Patriot', '8GB', 'DDR4', '2400MHz', 'CL17', 2, 0, 0, '1.2V', 'DIMM'),
('TeamGroup', '16GB', 'DDR4', '3200MHz', 'CL16', 2, 0, 1, '1.35V', 'DIMM'),
('Kingston', '8GB', 'DDR3', '1600MHz', 'CL11', 2, 0, 0, '1.5V', 'DIMM'),
('Crucial', '4GB', 'DDR3', '1333MHz', 'CL9', 1, 0, 0, '1.5V', 'DIMM'),
('Corsair', '32GB', 'DDR4', '3600MHz', 'CL18', 4, 1, 1, '1.35V', 'DIMM'),
('G.Skill', '16GB', 'DDR4', '2666MHz', 'CL16', 2, 0, 1, '1.2V', 'DIMM'),
('Kingston', '8GB', 'DDR4', '2133MHz', 'CL15', 1, 0, 0, '1.2V', 'SODIMM'),
('Crucial', '8GB', 'DDR4', '2666MHz', 'CL19', 2, 0, 0, '1.2V', 'SODIMM'),
('ADATA', '16GB', 'DDR4', '2933MHz', 'CL17', 2, 1, 1, '1.35V', 'DIMM'),
('G.Skill', '32GB', 'DDR4', '3200MHz', 'CL16', 4, 1, 1, '1.35V', 'DIMM'),
('Corsair', '16GB', 'DDR4', '3600MHz', 'CL18', 2, 1, 1, '1.35V', 'DIMM'),
('Kingston', '8GB', 'DDR3', '1866MHz', 'CL10', 2, 0, 0, '1.5V', 'DIMM'),
('Crucial', '8GB', 'DDR3', '1600MHz', 'CL11', 2, 0, 0, '1.5V', 'DIMM'),
('G.Skill', '16GB', 'DDR4', '3200MHz', 'CL16', 2, 1, 1, '1.35V', 'DIMM'),
('Corsair', '32GB', 'DDR4', '3600MHz', 'CL18', 4, 1, 1, '1.35V', 'DIMM');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về ổ cứng
CREATE TABLE products_storage (
    manufacturer VARCHAR(100), -- Hãng sản xuất
    storage_id INT PRIMARY KEY IDENTITY(1,1),
    capacity VARCHAR(50),
    type VARCHAR(50),
    interface VARCHAR(50),
    speed VARCHAR(50)
);

-- Thêm sản phẩm ổ cứng
INSERT INTO products_storage (manufacturer, capacity, type, interface, speed)
VALUES 
('Western Digital', '1TB', 'SSD', 'SATA III', '560 MB/s'),
('Samsung', '500GB', 'SSD', 'NVMe PCIe', '3500 MB/s'),
('Seagate', '2TB', 'HDD', 'SATA III', '7200 RPM'),
('Crucial', '1TB', 'SSD', 'SATA III', '540 MB/s'),
('ADATA', '512GB', 'SSD', 'SATA III', '520 MB/s'),
('Toshiba', '4TB', 'HDD', 'SATA III', '7200 RPM'),
('Kingston', '256GB', 'SSD', 'SATA III', '500 MB/s'),
('SanDisk', '1TB', 'SSD', 'SATA III', '545 MB/s'),
('Intel', '500GB', 'SSD', 'SATA III', '560 MB/s'),
('Corsair', '2TB', 'SSD', 'NVMe PCIe', '4800 MB/s'),
('WD', '1TB', 'HDD', 'SATA III', '7200 RPM'),
('Samsung', '1TB', 'SSD', 'SATA III', '550 MB/s'),
('Seagate', '500GB', 'SSD', 'SATA III', '520 MB/s'),
('Crucial', '2TB', 'SSD', 'SATA III', '560 MB/s'),
('ADATA', '256GB', 'SSD', 'SATA III', '550 MB/s'),
('Toshiba', '500GB', 'SSD', 'SATA III', '560 MB/s'),
('Kingston', '1TB', 'SSD', 'SATA III', '525 MB/s'),
('SanDisk', '2TB', 'SSD', 'SATA III', '530 MB/s'),
('Intel', '256GB', 'SSD', 'SATA III', '550 MB/s'),
('Corsair', '500GB', 'SSD', 'SATA III', '560 MB/s');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về GPU
CREATE TABLE products_GPU (
    gpu_id INT PRIMARY KEY IDENTITY(1,1),
    product_name NVARCHAR(255),
    manufacturer NVARCHAR(255),
    graphics_chip NVARCHAR(255),
    memory NVARCHAR(50),
    interface NVARCHAR(50),
    core_clock NVARCHAR(50),
    memory_speed NVARCHAR(50),
    resolution_support NVARCHAR(100),
    directx_opengl_support NVARCHAR(50),
    ports NVARCHAR(255)
);

-- Thêm sản phẩm GPU
INSERT INTO products_GPU (product_name, manufacturer, graphics_chip, memory, interface, core_clock, memory_speed, resolution_support, directx_opengl_support, ports)
VALUES 
('NVIDIA GeForce RTX 3080', 'NVIDIA', 'GA102', '10GB GDDR6X', 'PCIe 4.0', '1440 MHz', '19 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4a'),
('NVIDIA GeForce RTX 3070', 'NVIDIA', 'GA104', '8GB GDDR6', 'PCIe 4.0', '1500 MHz', '14 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4a'),
('NVIDIA GeForce RTX 3060 Ti', 'NVIDIA', 'GA104', '8GB GDDR6', 'PCIe 4.0', '1410 MHz', '14 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4a'),
('AMD Radeon RX 6900 XT', 'AMD', 'Navi 21 XTX', '16GB GDDR6', 'PCIe 4.0', '2015 MHz', '16 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4'),
('AMD Radeon RX 6800 XT', 'AMD', 'Navi 21 XT', '16GB GDDR6', 'PCIe 4.0', '2015 MHz', '16 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4'),
('AMD Radeon RX 6700 XT', 'AMD', 'Navi 22 XT', '12GB GDDR6', 'PCIe 4.0', '2424 MHz', '16 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4'),
('ASUS GeForce RTX 3090', 'ASUS', 'GA102', '24GB GDDR6X', 'PCIe 4.0', '1695 MHz', '19.5 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4a'),
('Gigabyte GeForce RTX 3080', 'Gigabyte', 'GA102', '10GB GDDR6X', 'PCIe 4.0', '1710 MHz', '19 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4a'),
('MSI GeForce RTX 3070', 'MSI', 'GA104', '8GB GDDR6', 'PCIe 4.0', '1725 MHz', '14 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4a'),
('EVGA GeForce RTX 3060', 'EVGA', 'GA106', '12GB GDDR6', 'PCIe 4.0', '1320 MHz', '15 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.1, DisplayPort 1.4a'),
('ZOTAC GeForce RTX 2080 Ti', 'ZOTAC', 'TU102', '11GB GDDR6', 'PCIe 3.0', '1545 MHz', '14 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.5', 'HDMI 2.0b, DisplayPort 1.4'),
('Sapphire Radeon RX 5700 XT', 'Sapphire', 'Navi 10 XT', '8GB GDDR6', 'PCIe 4.0', '1905 MHz', '14 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DisplayPort 1.4'),
('PowerColor Radeon RX 5600 XT', 'PowerColor', 'Navi 10 XLE', '6GB GDDR6', 'PCIe 4.0', '1560 MHz', '12 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DisplayPort 1.4'),
('PNY GeForce GTX 1660 Super', 'PNY', 'TU116', '6GB GDDR6', 'PCIe 3.0', '1785 MHz', '14 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DisplayPort 1.4'),
('XFX Radeon RX 5500 XT', 'XFX', 'Navi 14 XT', '8GB GDDR6', 'PCIe 4.0', '1845 MHz', '14 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DisplayPort 1.4'),
('Galax GeForce GTX 1650 Super', 'Galax', 'TU116', '4GB GDDR6', 'PCIe 3.0', '1725 MHz', '12 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DisplayPort 1.4'),
('Colorful GeForce GTX 1660', 'Colorful', 'TU116', '6GB GDDR5', 'PCIe 3.0', '1785 MHz', '8 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DisplayPort 1.4'),
('GALAX GeForce GTX 1650', 'GALAX', 'TU117', '4GB GDDR5', 'PCIe 3.0', '1485 MHz', '8 Gbps', '7680x4320', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DisplayPort 1.4'),
('Inno3D GeForce GT 1030', 'Inno3D', 'GP108', '2GB GDDR5', 'PCIe 3.0', '1468 MHz', '6 Gbps', '3840x2160', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DVI-D'),
('ASRock Radeon RX 550', 'ASRock', 'Lexa Pro', '2GB GDDR5', 'PCIe 3.0', '1100 MHz', '7 Gbps', '3840x2160', 'DirectX 12, OpenGL 4.6', 'HDMI 2.0b, DVI-D'),
('GIGABYTE GeForce GT 710', 'GIGABYTE', 'GF119', '1GB DDR3', 'PCIe 2.0', '954 MHz', '1.8 Gbps', '2560x1600', 'DirectX 12, OpenGL 4.5', 'HDMI 1.4, DVI-D, VGA');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về PSU
CREATE TABLE products_PSU (
    psu_id INT PRIMARY KEY IDENTITY(1,1),
    product_name NVARCHAR(255),
    manufacturer NVARCHAR(255),
    wattage INT,
    type NVARCHAR(50),
    certification NVARCHAR(50),
    size NVARCHAR(50),
    connectors NVARCHAR(255),
    protection_features NVARCHAR(255)
);

-- Thêm sản phẩm PSU
INSERT INTO products_PSU (product_name, manufacturer, wattage, type, certification, size, connectors, protection_features)
VALUES 
('Corsair RM850x', 'Corsair', 850, 'ATX', '80 Plus Gold', '150 x 86 x 160', '24-pin ATX, 8-pin EPS, 8 x PCIe, 12 x SATA, 4 x Molex', 'Over-voltage, Over-power, Short-circuit'),
('EVGA SuperNOVA 750 G3', 'EVGA', 750, 'ATX', '80 Plus Gold', '150 x 85 x 150', '24-pin ATX, 8-pin EPS, 6 x PCIe, 9 x SATA, 6 x Molex', 'Over-voltage, Over-current, Short-circuit'),
('Seasonic Focus GX-650', 'Seasonic', 650, 'ATX', '80 Plus Gold', '140 x 150 x 86', '24-pin ATX, 8-pin EPS, 4 x PCIe, 10 x SATA, 5 x Molex', 'Over-voltage, Over-power, Over-temperature'),
('Cooler Master MWE Gold 750 V2', 'Cooler Master', 750, 'ATX', '80 Plus Gold', '150 x 86 x 140', '24-pin ATX, 8-pin EPS, 6 x PCIe, 9 x SATA, 5 x Molex', 'Over-voltage, Over-power, Short-circuit'),
('NZXT C850', 'NZXT', 850, 'ATX', '80 Plus Gold', '150 x 85 x 165', '24-pin ATX, 8-pin EPS, 6 x PCIe, 10 x SATA, 4 x Molex', 'Over-voltage, Over-power, Over-temperature'),
('be quiet! Straight Power 11 650W', 'be quiet!', 650, 'ATX', '80 Plus Gold', '150 x 160 x 86', '24-pin ATX, 8-pin EPS, 4 x PCIe, 9 x SATA, 6 x Molex', 'Over-voltage, Over-current, Short-circuit'),
('Thermaltake Toughpower Grand RGB 750W', 'Thermaltake', 750, 'ATX', '80 Plus Gold', '150 x 86 x 160', '24-pin ATX, 8-pin EPS, 6 x PCIe, 10 x SATA, 6 x Molex', 'Over-voltage, Over-current, Over-power'),
('Antec Earthwatts Gold Pro 750W', 'Antec', 750, 'ATX', '80 Plus Gold', '150 x 86 x 140', '24-pin ATX, 8-pin EPS, 4 x PCIe, 10 x SATA, 5 x Molex', 'Over-voltage, Over-current, Short-circuit'),
('SilverStone Strider Gold S 850W', 'SilverStone', 850, 'ATX', '80 Plus Gold', '150 x 86 x 150', '24-pin ATX, 8-pin EPS, 6 x PCIe, 10 x SATA, 5 x Molex', 'Over-voltage, Over-current, Over-power'),
('FSP Hydro PTM+ 850W', 'FSP', 850, 'ATX', '80 Plus Platinum', '150 x 86 x 160', '24-pin ATX, 8-pin EPS, 6 x PCIe, 10 x SATA, 6 x Molex', 'Over-voltage, Over-power, Short-circuit'),
('EVGA SuperNOVA 850 T2', 'EVGA', 850, 'ATX', '80 Plus Titanium', '150 x 85 x 180', '24-pin ATX, 8-pin EPS, 4 x PCIe, 10 x SATA, 6 x Molex', 'Over-voltage, Over-current, Over-temperature'),
('Seasonic Prime TX-1000', 'Seasonic', 1000, 'ATX', '80 Plus Titanium', '150 x 86 x 170', '24-pin ATX, 8-pin EPS, 8 x PCIe, 12 x SATA, 5 x Molex', 'Over-voltage, Over-current, Short-circuit'),
('Corsair AX1600i', 'Corsair', 1600, 'ATX', '80 Plus Titanium', '150 x 86 x 200', '24-pin ATX, 8-pin EPS, 16 x PCIe, 12 x SATA, 10 x Molex', 'Over-voltage, Over-current, Over-power'),
('Cooler Master V1300 Platinum', 'Cooler Master', 1300, 'ATX', '80 Plus Platinum', '150 x 86 x 180', '24-pin ATX, 8-pin EPS, 8 x PCIe, 12 x SATA, 8 x Molex', 'Over-voltage, Over-current, Over-temperature'),
('NZXT C1000', 'NZXT', 1000, 'ATX', '80 Plus Gold', '150 x 86 x 165', '24-pin ATX, 8-pin EPS, 8 x PCIe, 10 x SATA, 6 x Molex', 'Over-voltage, Over-current, Short-circuit'),
('be quiet! Dark Power Pro 12 1500W', 'be quiet!', 1500, 'ATX', '80 Plus Titanium', '150 x 160 x 86', '24-pin ATX, 8-pin EPS, 8 x PCIe, 12 x SATA, 10 x Molex', 'Over-voltage, Over-current, Over-temperature'),
('Thermaltake Toughpower Grand RGB 850W', 'Thermaltake', 850, 'ATX', '80 Plus Gold', '150 x 86 x 160', '24-pin ATX, 8-pin EPS, 6 x PCIe, 10 x SATA, 6 x Molex', 'Over-voltage, Over-current, Over-power'),
('Antec HCG-850 Gold', 'Antec', 850, 'ATX', '80 Plus Gold', '150 x 86 x 140', '24-pin ATX, 8-pin EPS, 6 x PCIe, 10 x SATA, 5 x Molex', 'Over-voltage, Over-current, Short-circuit'),
('SilverStone SX700-G', 'SilverStone', 700, 'SFX', '80 Plus Gold', '125 x 63.5 x 100', '24-pin ATX, 8-pin EPS, 4 x PCIe, 8 x SATA, 3 x Molex', 'Over-voltage, Over-current, Over-power'),
('FSP Dagger Pro 650W', 'FSP', 650, 'SFX', '80 Plus Gold', '125 x 63.5 x 100', '24-pin ATX, 8-pin EPS, 4 x PCIe, 8 x SATA, 3 x Molex', 'Over-voltage, Over-current, Short-circuit');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về Case
CREATE TABLE products_case (
    case_id INT PRIMARY KEY IDENTITY(1,1),
    product_name NVARCHAR(255),
    manufacturer NVARCHAR(255),
    dimension NVARCHAR(50),
    type NVARCHAR(50),
    color NVARCHAR(50),
    material NVARCHAR(50),
    cooling_support NVARCHAR(255),
    expansion_slots INT,
    front_panel_ports NVARCHAR(255),
    special_features NVARCHAR(255)
);

-- Thêm sản phẩm Case
INSERT INTO products_case (product_name, manufacturer, dimension, type, color, material, cooling_support, expansion_slots, front_panel_ports, special_features)
VALUES 
('NZXT H510', 'NZXT', '210 x 460 x 428', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 2 fans 120mm', 7, '2 x USB 3.1, 1 x USB-C, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Corsair 4000D Airflow', 'Corsair', '453 x 230 x 466', 'ATX Mid Tower', 'White', 'Steel, Plastic', 'Supports 3 fans 120mm', 6, '1 x USB 3.1, 1 x USB 3.0, 1 x Audio, 1 x Microphone', 'Tempered glass panel'),
('Phanteks Eclipse P300A', 'Phanteks', '200 x 450 x 400', 'Micro-ATX Mid Tower', 'Black', 'Steel, Plastic', 'Supports 2 fans 120mm', 4, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Cooler Master MasterBox MB511', 'Cooler Master', '452 x 217 x 525', 'ATX Mid Tower', 'Black', 'Steel, Plastic', 'Supports 3 fans 120mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Fractal Design Meshify C', 'Fractal Design', '395 x 212 x 440', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 2 fans 120mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Lian Li Lancool II Mesh', 'Lian Li', '478 x 229 x 494', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 3 fans 120mm', 7, '2 x USB 3.0, 1 x USB-C, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('NZXT H510 Elite', 'NZXT', '210 x 460 x 428', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 2 fans 120mm', 7, '2 x USB 3.1, 1 x USB-C, 1 x Audio, 1 x Microphone', 'Supports water cooling, RGB'),
('Corsair Crystal 570X RGB', 'Corsair', '480 x 234 x 512', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 3 fans 120mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling, RGB'),
('Phanteks Eclipse P400A', 'Phanteks', '210 x 465 x 470', 'ATX Mid Tower', 'Black', 'Steel, Plastic', 'Supports 3 fans 120mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Cooler Master MasterBox MB520', 'Cooler Master', '467 x 220 x 513', 'ATX Mid Tower', 'Black', 'Steel, Plastic', 'Supports 3 fans 120mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Fractal Design Define 7', 'Fractal Design', '547 x 240 x 475', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 3 fans 140mm', 7, '2 x USB 3.1, 2 x USB 2.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Lian Li Lancool II Mesh RGB', 'Lian Li', '478 x 229 x 494', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 3 fans 120mm', 7, '2 x USB 3.0, 1 x USB-C, 1 x Audio, 1 x Microphone', 'Supports water cooling, RGB'),
('NZXT H710i', 'NZXT', '230 x 516 x 494', 'ATX Full Tower', 'White', 'Steel, Tempered Glass', 'Supports 4 fans 120mm', 7, '1 x USB 3.1 Gen 2 Type-C, 2 x USB 3.1 Gen 1 Type-A, 1 x Audio, 1 x Microphone', 'Supports water cooling, RGB'),
('Corsair Carbide 275R', 'Corsair', '446 x 211 x 436', 'ATX Mid Tower', 'White', 'Steel, Tempered Glass', 'Supports 2 fans 120mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Phanteks Eclipse P360X', 'Phanteks', '200 x 465 x 455', 'ATX Mid Tower', 'Black', 'Steel, Plastic', 'Supports 3 fans 120mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Cooler Master MasterCase H500', 'Cooler Master', '525 x 228 x 502', 'ATX Mid Tower', 'Black', 'Steel, Plastic', 'Supports 2 fans 200mm', 7, '2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Fractal Design Meshify 2', 'Fractal Design', '440 x 233 x 474', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 3 fans 120mm', 7, '2 x USB 3.1 Gen 2 Type-C, 2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('Lian Li PC-O11 Dynamic', 'Lian Li', '471 x 274 x 446', 'ATX Full Tower', 'Black', 'Steel, Tempered Glass', 'Supports 9 fans 120mm', 8, '2 x USB 3.0, 1 x USB 3.1 Type-C, 1 x Audio, 1 x Microphone', 'Supports water cooling'),
('NZXT H510i', 'NZXT', '210 x 460 x 428', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 2 fans 120mm', 7, '2 x USB 3.1, 1 x USB-C, 1 x Audio, 1 x Microphone', 'Supports water cooling, RGB'),
('Corsair Obsidian 500D RGB SE', 'Corsair', '500 x 238 x 507', 'ATX Mid Tower', 'Black', 'Steel, Tempered Glass', 'Supports 3 fans 120mm', 7, '2 x USB 3.1, 2 x USB 3.0, 1 x Audio, 1 x Microphone', 'Supports water cooling, RGB');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về Fan CPU
CREATE TABLE products_fanCPU (
    fanCPU_id INT PRIMARY KEY IDENTITY(1,1),
    product_name NVARCHAR(255),
    manufacturer NVARCHAR(255),
    type NVARCHAR(50),
    socket NVARCHAR(50),
    size NVARCHAR(50),
    material NVARCHAR(100),
    fan_spec NVARCHAR(255),
    heatpipe_spec NVARCHAR(255),
    special_features NVARCHAR(255),
    compatibility NVARCHAR(MAX)
);

-- Thêm sản phẩm Fan CPU
INSERT INTO products_fanCPU (product_name, manufacturer, type, socket, size, material, fan_spec, heatpipe_spec, special_features, compatibility)
VALUES 
('Noctua NH-D15', 'Noctua', 'Air cooler', 'LGA 1151, AM4', 'Dual Tower', 'Aluminum, Copper', '2 x 140mm', '6 x 6mm', 'Supports fan replacement, High efficiency cooling', 'Intel: LGA1150, LGA1151, LGA1155, LGA1156, LGA1200, LGA2011, LGA2066; AMD: AM4, AM3(+), AM2(+), FM2(+), FM1'),
('Cooler Master Hyper 212 RGB Black Edition', 'Cooler Master', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum', '1 x 120mm', '4 x 6mm', 'RGB LED lighting, Sleek design', 'Intel: LGA 2066, 2011-v3, 2011, 1200, 1151, 1150, 1155, 1156; AMD: AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1'),
('Corsair iCUE H150i RGB Pro XT', 'Corsair', 'Liquid cooler', 'LGA 1151, AM4', '360mm Radiator', 'Aluminum', '3 x 120mm', '---', 'RGB LED lighting, Corsair ML Series PWM fans', 'Intel: 1200, 1150, 1151, 1155, 1156, 1366, 2011, 2066; AMD: AM4, AM3, AM2, sTRX4, sTR4'),
('NZXT Kraken X63', 'NZXT', 'Liquid cooler', 'LGA 1151, AM4', '280mm Radiator', 'Aluminum', '2 x 140mm', '---', 'Copper baseplate, RGB LED lighting', 'Intel Socket LGA 1200, 1151, 1150, 1155, 1156, 1366, 2011, 2066; AMD Socket AM4, sTRX4*, TR4*'),
('Deepcool GAMMAXX GT BK', 'Deepcool', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum', '1 x 120mm', '4 x 6mm', 'RGB LED lighting, Stylish design', 'Intel: LGA2066, LGA2011-V3, LGA2011, LGA1200, LGA1151, LGA1150, LGA1155, LGA1156; AMD: AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1'),
('Arctic Liquid Freezer II 240', 'Arctic', 'Liquid cooler', 'LGA 1151, AM4', '240mm Radiator', 'Aluminum', '2 x 120mm', '---', 'VRM cooling module, CPU & GPU support', 'Intel Socket: 1150, 1151, 1155, 1156, 1200, 2011-3, 2066 / AMD Socket: AM4'),
('be quiet! Dark Rock Pro 4', 'be quiet!', 'Air cooler', 'LGA 1151, AM4', 'Dual Tower', 'Aluminum, Copper', '1 x 120mm, 1 x 135mm', '7 x 6mm', 'Unique design, Low noise', 'Intel: 1150, 1151, 1155, 1156, 1366, 2011(-3) Square ILM, 2066 / AMD: AM4, AM3(+), AM2(+), FM2(+), FM1'),
('Thermalright Le Grand Macho RT', 'Thermalright', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum, Copper', '1 x 140mm', '---', 'Premium design, Efficient cooling', 'Intel: LGA 2066, 2011(-3), 1366, 1200, 115x / AMD: AM4, AM3(+), AM2(+), FM1, FM2(+)'),
('ID-COOLING SE-224-XT ARGB', 'ID-COOLING', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum', '1 x 120mm', '4 x 6mm', 'ARGB LED lighting, Elegant design', 'Intel: LGA2066/2011(-3)/2011/1200/1151/1150/1155/1156/1366; AMD: AM4/AM3(+)/AM3/AM2(+)/FM2(+)'),
('Scythe Mugen 5 Rev.B', 'Scythe', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum, Copper', '1 x 120mm', '6 x 6mm', 'Simple design, High cooling performance', 'Intel: LGA 2066, 2011(-3), 115x, 1200, 775; AMD: AM4, AM3(+), AM3, AM2(+), FM2(+)'),
('SilverStone Technology Argon Series AR11', 'SilverStone', 'Air cooler', 'LGA 1151, AM4', 'Low-profile', 'Aluminum', '1 x 92mm', '3 x 6mm', 'Compact design, Effective cooling performance', 'Intel: LGA 115x, 1366; AMD: AM4, AM3(+), AM3, AM2(+), FM2(+)'),
('CRYORIG H7', 'CRYORIG', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum, Copper', '1 x 120mm', '3 x 6mm', 'Stylish design, Excellent cooling performance', 'Intel: LGA 1150/1151/1155/1156/1366/2011/2011-3/2066 / AMD: FM1/FM2/FM2+/AM2/AM2+/AM3/AM3+/AM4'),
('ARCTIC Freezer 34 eSports DUO', 'ARCTIC', 'Air cooler', 'LGA 1151, AM4', 'Dual Tower', 'Aluminum', '2 x 120mm', '4 x 6mm', 'RGB LED lighting, Efficient cooling', 'Intel: 115x, 1200, 2011-3*, 2066* / AMD: AM4'),
('ENERMAX ETS-T50 AXE ARGB', 'ENERMAX', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum, Copper', '1 x 120mm', '5 x 6mm', 'ARGB LED lighting, Stylish design', 'Intel: LGA 2066/2011(-3)/1200/115x; AMD: AM4/AM3(+)/AM3/AM2(+)/AM2/FM2(+)'),
('DEEPCOOL GAMMAXX 400 V2', 'DEEPCOOL', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum', '1 x 120mm', '4 x 6mm', 'High cooling performance, Simple design', 'Intel: LGA2066/2011(-3)/2011/1200/1151/1150/1155/1156/1366; AMD: AM4/AM3(+)/AM3/AM2(+)/FM2(+)/FM2/FM1'),
('Cooler Master MasterLiquid ML240L RGB V2', 'Cooler Master', 'Liquid cooler', 'LGA 1151, AM4', '240mm Radiator', 'Aluminum', '2 x 120mm', '---', 'RGB LED lighting, Dual pump system', 'Intel LGA 1200, 1151, 1150, 1155, 1156, 1366, 2011, 2011-3, 2066; AMD AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1'),
('Noctua NH-L9x65 SE-AM4', 'Noctua', 'Air cooler', 'LGA 1151, AM4', 'Low-profile', 'Aluminum, Copper', '1 x 92mm', '2 x 6mm', 'Compact design, Extreme cooling support', 'Intel: LGA1150, LGA1151, LGA1155, LGA1156, LGA1200, AM4, AM3(+), AM2(+), FM2(+), FM1'),
('ID-COOLING SE-234-ARGB', 'ID-COOLING', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum', '1 x 120mm', '4 x 6mm', 'ARGB LED lighting, Elegant design', 'Intel: LGA2066/2011(-3)/2011/1200/1151/1150/1155/1156/1366; AMD: AM4/AM3(+)/AM3/AM2(+)/FM2(+)'),
('Cooler Master Hyper 212 EVO', 'Cooler Master', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum', '1 x 120mm', '4 x 6mm', 'Effective design, Affordable price', 'Intel LGA 2066 / 2011-3 / 2011 / 1366 / 1156 / 1155 / 1151 / 1150 / 775; AMD AM4 / AM3+ / AM3 / AM2+ / FM2+ / FM2 / FM1'),
('CRYORIG H5 Ultimate', 'CRYORIG', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum, Copper', '1 x 140mm', '5 x 6mm', 'Stylish design, Excellent cooling performance', 'Intel: LGA1150, LGA1151, LGA1155, LGA1156, LGA1200, LGA2011(-3), LGA2066; AMD: AM4, AM3(+), AM3, FM2(+), FM2, FM1'),
('DEEPCOOL GAMMAXX GTE V2', 'DEEPCOOL', 'Air cooler', 'LGA 1151, AM4', 'Single Tower', 'Aluminum', '1 x 120mm', '4 x 6mm', 'High cooling performance, RGB LED lighting', 'Intel: LGA2066/2011(-3)/2011/1200/1151/1150/1155/1156/1366; AMD: AM4/AM3(+)/AM3/AM2(+)/FM2(+)/FM2/FM1');
-- Thêm sản phẩm...

-- Tạo bảng chứa thông tin về Fan Case
CREATE TABLE products_fancase (
    fan_id INT PRIMARY KEY IDENTITY(1,1),
    product_name NVARCHAR(255),
    manufacturer NVARCHAR(255),
    type NVARCHAR(50),
    size NVARCHAR(50),
    description NVARCHAR(MAX),
    socket_support NVARCHAR(255),
    material NVARCHAR(255),
    fan_count INT,
    pipe_size NVARCHAR(50),
    special_features NVARCHAR(MAX)
);

-- Thêm sản phẩm Fan Case
INSERT INTO products_fancase (product_name, manufacturer, type, size, description, socket_support, material, fan_count, pipe_size, special_features)
VALUES 
('NZXT Aer RGB 2 120mm', 'NZXT', 'Air cooler', '120mm', 'High-performance RGB cooling fan', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, High performance'),
('CORSAIR LL120 RGB', 'Corsair', 'Air cooler', '120mm', 'Premium RGB cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, High performance'),
('Cooler Master SickleFlow 120', 'Cooler Master', 'Air cooler', '120mm', 'Simple cooling fan with good performance', 'Universal', 'Plastic', 1, 'N/A', 'Good performance, Simple design'),
('DEEPCOOL RF120M', 'DEEPCOOL', 'Air cooler', '120mm', 'RGB cooling fan with good performance', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, Good performance'),
('Arctic P12 PWM PST', 'Arctic', 'Air cooler', '120mm', 'Energy-saving cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'Energy-saving, High performance'),
('be quiet! Silent Wings 3 140mm', 'be quiet!', 'Air cooler', '140mm', 'Ultra-quiet cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'Ultra-quiet, High performance'),
('Noctua NF-A12x25 PWM', 'Noctua', 'Air cooler', '120mm', 'High-quality cooling fan with good performance', 'Universal', 'Plastic', 1, 'N/A', 'High quality, Good performance'),
('Thermaltake Riing Quad 12 RGB', 'Thermaltake', 'Air cooler', '120mm', 'RGB cooling fan with unique design', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, Unique design'),
('Fractal Design Prisma AL-12 PWM', 'Fractal Design', 'Air cooler', '120mm', 'RGB cooling fan with modern design', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, Modern design'),
('SilverStone Air Blazer 120i Lite', 'SilverStone', 'Air cooler', '120mm', 'Silent cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'Silent operation, High performance'),
('NZXT Aer RGB 2 140mm', 'NZXT', 'Air cooler', '140mm', 'Premium RGB cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, High performance'),
('CORSAIR LL140 RGB', 'Corsair', 'Air cooler', '140mm', 'Premium RGB cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, High performance'),
('Cooler Master SickleFlow 140', 'Cooler Master', 'Air cooler', '140mm', 'Simple cooling fan with good performance', 'Universal', 'Plastic', 1, 'N/A', 'Good performance, Simple design'),
('DEEPCOOL RF140M', 'DEEPCOOL', 'Air cooler', '140mm', 'RGB cooling fan with good performance', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, Good performance'),
('Arctic P14 PWM PST', 'Arctic', 'Air cooler', '140mm', 'Energy-saving cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'Energy-saving, High performance'),
('be quiet! Silent Wings 3 120mm', 'be quiet!', 'Air cooler', '120mm', 'Ultra-quiet cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'Ultra-quiet, High performance'),
('Noctua NF-A14 PWM', 'Noctua', 'Air cooler', '140mm', 'High-quality cooling fan with good performance', 'Universal', 'Plastic', 1, 'N/A', 'High quality, Good performance'),
('Thermaltake Riing Quad 14 RGB', 'Thermaltake', 'Air cooler', '140mm', 'RGB cooling fan with unique design', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, Unique design'),
('Fractal Design Prisma AL-14 PWM', 'Fractal Design', 'Air cooler', '140mm', 'RGB cooling fan with modern design', 'Universal', 'Plastic', 1, 'N/A', 'RGB LED lighting, Modern design'),
('SilverStone Air Blazer 140i Lite', 'SilverStone', 'Air cooler', '140mm', 'Silent cooling fan with high performance', 'Universal', 'Plastic', 1, 'N/A', 'Silent operation, High performance');
-- Thêm sản phẩm...
