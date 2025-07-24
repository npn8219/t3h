CREATE DATABASE IF NOT EXISTS tb_qldh;
USE tb_qldh;

DROP TABLE IF EXISTS order_data;
CREATE TABLE order_data (
                            id INT PRIMARY KEY AUTO_INCREMENT,
                            product_name VARCHAR(50) NOT NULL,
                            price INT UNSIGNED,
                            quantity INT UNSIGNED,
                            supplier VARCHAR(100) DEFAULT NULL,
                            tax INT UNSIGNED,
                            imported_date DATETIME DEFAULT NULL,
                            from_country VARCHAR(50) DEFAULT NULL,
    -- NOW(), CURRENT_TIMESTAMP(): Lấy thời gian hiện tại
                            created_date DATETIME DEFAULT CURRENT_TIMESTAMP(),
                            updated_date DATETIME DEFAULT NOW()
);

INSERT INTO order_data (id, product_name, price, quantity, supplier, tax, imported_date, from_country)
VALUES
    (1, 'Wine', 41, 6, 'Sunhouse', 10, '2022-04-01', 'France'),
    (2, 'Flower', 40, 7, 'Amazone', 12, '2022-04-01', 'France'),
    (3, 'Flower', 39, 7, 'Amazone', 13, '2022-04-01', 'Germany'),
    (4, 'Rice', NULL, 4, 'Oracle', NULL, NULL, 'France'),
    (5, 'Flower', 37, 7, 'Sunhouse', 14, '2022-04-01', 'France'),
    (6, 'Sugar', 38, 8, 'Sunhouse', 11, '2022-04-01', 'France'),
    (7, 'Sugar', NULL, 4, 'Amazone', NULL, NULL, 'Germany'),
    (8, 'Rice', 38, 4, 'Oracle', 9, '2022-04-01', 'Germany'),
    (9, 'Wine', 41, 6, 'Oracle', 12, '2022-04-01', 'France'),
    (10, 'Bread', 40, 7, 'Oracle', 14, '2022-04-01', 'France'),
    (11, 'Rice', 39, 8, 'Sun Shades Lip Balm', 14, '2022-04-01', 'France'),
    (12, 'Sugar', 41, 4, 'Oracle', 13, '2022-04-01', 'France'),
    (13, 'Bread', NULL, 7, 'Oracle', NULL, NULL, 'France'),
    (14, 'Sugar', 38, 8, 'Sunhouse', 6, '2022-04-01', 'France'),
    (15, 'Wine', NULL, 5, 'Sunhouse', NULL, NULL, 'France'),
    (16, 'Wine', 37, 7, 'Amazone', 7, '2022-04-01', 'France'),
    (17, 'Rice', 40, 4, 'Sunhouse', 14, '2022-04-01', 'France'),
    (18, 'Bread', 38, 7, 'Amazone', 10, '2022-04-01', 'France'),
    (19, 'Rice', 40, 6, 'Oracle', 8, '2022-04-01', 'France'),
    (20, 'Sugar', 39, 5, 'Amazone', 14, '2022-04-01', 'France');


-- 1. Đếm số lượng sản phẩm là rượu
Select sum(quantity)
From order_data
Where product_name = 'Wine'
Group by product_name;

-- 2. Thống kê số lượng sản phẩm theo supplier
Select supplier, sum(quantity)
From order_data
Group by supplier;

-- 3. Hiển thị những sản phẩm chưa có giá
select *
from order_data
where price is null;

-- 4. Có bao nhiêu sản phẩm được nhập vào năm 2022
select *
from order_data
where YEAR(imported_date) = 2022;

-- 5. Tính giá trung bình các sản phẩm do Oracle cung cấp
select avg(price)
from order_data
where supplier = 'Oracle' and price is not null;

-- 6. Hiển thị các sản phẩm không biết giá trị thuế
select *
from order_data
where tax is null;

-- 7. Hiển thị tên các nhà cung cấp mà có ít nhất 2 sản phẩm chưa có giá trị thuế
SELECT supplier
FROM order_data
WHERE tax IS NULL
GROUP BY supplier
HAVING COUNT(id) >= 2;


