DROP SCHEMA t3h01;
CREATE SCHEMA t3h01;
USE t3h01;

CREATE TABLE order_data (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    amount INT,
    customer INT
);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200)
);

INSERT INTO order_data(amount, customer)
VALUES
    (200, 10),
    (500, 3),
    (300, 6),
    (800, 5),
    (150, 8);

INSERT INTO customer(customer_id, first_name)
VALUES
    (1, 'John'),
    (2, 'Robert'),
    (3, 'David'),
    (4, 'Jane'),
    (5, 'Betty');

SELECT *
FROM order_data JOIN customer
ON order_data.customer = customer_id;