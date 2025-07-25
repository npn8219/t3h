DROP SCHEMA t3h01;
CREATE SCHEMA t3h01;
USE t3h01;

CREATE TABLE mon_hoc (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_mon_hoc VARCHAR(200) UNIQUE
);

CREATE TABLE lop (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_lop VARCHAR(200) UNIQUE
);

INSERT INTO mon_hoc (ten_mon_hoc)
VALUES
    ('toan'),
    ('sql'),
    ('tin hoc co ban');

INSERT INTO lop (ten_lop)
VALUES
    ('d01k16'),
    ('d02k16'),
    ('lt01k16');

CREATE TABLE mon_hoc_lop (
    mon_hoc_id INT,
    lop_id INT,
    -- khóa chính là 2 cột, bộ đôi này không trùng lặp
    PRIMARY KEY(mon_hoc_id, lop_id),
    -- khóa ngoại sang 2 bảng tương ứng
    FOREIGN KEY (mon_hoc_id) REFERENCES mon_hoc(id),
    FOREIGN KEY (lop_id) REFERENCES lop(id)
);

INSERT INTO mon_hoc_lop (mon_hoc_id, lop_id)
VALUES
    (1, 5),
    (1, 7),
    (1, 9),
    (2, 5),
    (2, 7),
    (2, 9),
    (3, 5),
    (3, 7);

SELECT a.ten_mon_hoc, c.ten_lop
FROM mon_hoc a JOIN mon_hoc_lop b
ON a.id = b.mon_hoc_id
JOIN lop c ON c.id = b.lop_id;