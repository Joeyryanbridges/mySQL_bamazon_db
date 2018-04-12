-- *Create a MySQL Database called `bamazon_db`.
-- *Then create a Table inside of that database called `products`.

-- * item_id (unique id for each product)
-- * product_name (Name of product)
-- * department_name
-- * price (cost to customer)
-- * stock_quantity (how much of the product is available in stores)

-- *Populate this database with around 10 different products. 

CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2)NOT NULL,
  stock_quantity INT(10) NULL,
  PRIMARY KEY (item_id)
);

SELECT * FROM bamazon_db.products;


INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Sony Headphones', 'Electronics', 15.99, 30);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('HDMI Cable', 'Electronics', 19.80, 27);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Knife Set', 'Kitchen', 25.59, 15);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Ceramic coffee cup', 'Kitchen', 8.69, 100);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Basketball', 'Sports', 10.95, 20);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('T-Ball Set', 'Sports', 19.99, 25);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Stearing Wheel Cover', 'Auto', 15.49, 10);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Cherry Air Freshener', 'Auto', 1348.00, 4);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Bathroom Rug', 'Bathroom', 12.59, 30);

INSERT INTO bamazon_db.products (product_name, department_name, price, stock_quantity) VALUES ('Toothbrush Holder', 'Bathroom', 7.99, 3);