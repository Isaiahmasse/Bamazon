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

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Macbook Pro", "Electronics", 1000.00, 7);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("iPhone", "Electronics", 1250.00, 3);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Pokemon Lets GO", "Video game", 60.00, 2);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Super Smash Bro Ultimate", "Video game", 60.00, 4);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Call of Duty Black ops 4", "Video games", 60.00, 8);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Apple Watch", "Electronics", 400.00, 6);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Apple Home Pod", "Electronics", 300.00, 1);

INSERT INTO bamazonDB (product_name, department_name, price, stock_quantity)
VALUES ("Lightning USB cable", "Electronics", 25.00, 25);

UPDATE bamazonDB 
SET stock_quantity = 9
WHERE id = 1;