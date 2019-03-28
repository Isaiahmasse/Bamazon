CREATE database bamazonDB;

USE bamazonDB;

CREATE TABLE bamazonDB (
id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR(50) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price DECIMAL(10,2) NOT NULL,
stock_quantity INT(50) NOT NULL,
PRIMARY KEY(id)
);

SELECT*FROM bamazonDB;

-- create INSERT
INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Nintendo Switch", "Electronics", 100.00, 10);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Airpods", "Electronics", 200.00, 5);