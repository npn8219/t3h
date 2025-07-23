DROP SCHEMA t3h01;
CREATE SCHEMA t3h01;
USE t3h01;

CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(200),
    address VARCHAR(200),
    birthday DATE,
    department_id INT
);

CREATE TABLE department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(200)
);

INSERT INTO department(id, department_name)
VALUES
    (1, 'IT'),
    (2, 'Sale'),
    (3, 'Marrketing'),
    (4, 'Enocomic');

INSERT INTO student (id, full_name, address, birthday, department_id)
VALUES
    (1, 'Nguyen Ngoc', 'HN', '2005.03.12', 1),
    (2, 'Tran Nam', 'HP', '2006.06.28', 2),
    (3, 'Pham Chien', 'HCM', '2020.03.17', 3),
    (4, 'Pham Thang', 'HP', '1990.03.17', 1),
    (5, 'Nguyen Lan', 'HCM', '2025.03.17', 2),
    (6, 'Nguyen Chinh', 'HN', '2015.03.17', 3),
    (7, 'Pham Hoang', 'HN', '2010.03.17', 1),
    (8, 'Tran My', 'HCM', '2008.03.17', 2);

SELECT *
FROM student JOIN department
ON student.department_id = department.id;