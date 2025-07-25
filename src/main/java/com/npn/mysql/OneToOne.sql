DROP SCHEMA t3h01;
CREATE SCHEMA t3h01;
USE t3h01;

CREATE TABLE account (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE address (
    id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(200),
    city VARCHAR(200),
    country VARCHAR(200),
    account_id INT UNIQUE,
    FOREIGN KEY (account_id) REFERENCES account(id)
);

INSERT INTO account(street, city, country)
VALUES
    ('Tạ Quang Bửu','HN','VN',1),
    ('Phạm Hùng','HN','VN',2),
    ('Nguyễn Đức Cảnh','HP','VN',4);

SELECT *
FROM account a JOIN address b
ON a.id = b.account_id;
