DROP SCHEMA t3h01;
CREATE SCHEMA t3h01;
USE t3h01;

CREATE TABLE sinh_vien (
    id INT AUTO_INCREMENT,
    ho_ten VARCHAR(200),
    dia_chi VARCHAR(200),
    birthday DATE,
    email VARCHAR(200) UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE de_tai (
    id INT AUTO_INCREMENT,
    ten_de_tai VARCHAR(200),
    mo_ta VARCHAR(200),
    PRIMARY KEY (id)
);

CREATE TABLE sinh_vien_de_tai (
    sinh_vien_id INT,
    de_tai_id INT,
    PRIMARY KEY (sinh_vien_id, de_tai_id),
    FOREIGN KEY (sinh_vien_id) REFERENCES sinh_vien(id),
    FOREIGN KEY (de_tai_id) REFERENCES de_tai(id)
);

INSERT INTO sinh_vien (ho_ten, dia_chi, birthday, email)
VALUES
    ('Ngoc 1', 'HN', NOW(), 'ngoc1@gmail.com'),
    ('Ngoc 2', 'HN', NOW(), 'ngoc2@gmail.com'),
    ('Ngoc 3', 'HN', NOW(), 'ngoc3@gmail.com'),
    ('Ngoc 4', 'HN', NOW(), 'ngoc4@gmail.com');

INSERT INTO de_tai (ten_de_tai, mo_ta)
VALUES
    ('phat trien tiem nang con nguoi', 'tang tu duy'),
    ('tang IQ cua tre', 'giup tre thong minh');

INSERT INTO sinh_vien_de_tai (sinh_vien_id, de_tai_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 1);

SELECT *
FROM sinh_vien a JOIN sinh_vien_de_tai b ON a.id = b.sinh_vien_id
JOIN de_tai c ON c.id = b.de_tai_id;