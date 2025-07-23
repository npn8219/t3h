-- Khóa ngoại cần tham chiếu đến khóa chính
-- Khóa chính => dùng Foreign key references

DROP SCHEMA t3h01;
CREATE SCHEMA t3h01;
USE t3h01;

CREATE TABLE department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(200)
);

CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(200),
    address VARCHAR(200),
    birthday DATE,
    department_id INT UNIQUE,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO department(id, department_name)
VALUES
    (1, 'IT'),
    (2, 'Sale'),
    (3, 'Marketing'),
    (4, 'Economic');

INSERT INTO student (full_name, address, birthday, department_id)
VALUES
    ('Nguyen Ngoc', 'HN', '2005.03.12', 1),
    ('Tran Nam', 'HP', '2006.06.28', 2),
    ('Pham Chien', 'HCM', '2020.03.17', 3),
    ('Pham Thang', 'HP', '1990.03.17', null),
    ('Nguyen Lan', 'HCM', '2025.03.17', null),
    ('Nguyen Chinh', 'HN', '2015.03.17', null),
    ('Pham Hoang', 'HN', '2010.03.17', null),
    ('Tran My', 'HCM', '2008.03.17', null);

SELECT *
FROM student JOIN department
ON student.department_id = department.id;

SELECT a.id, a.full_name
FROM student a;

SELECT *
FROM student a JOIN department b
ON a.department_id = b.id;