DROP DATABASE IF EXISTS store;
CREATE SCHEMA store;

USE store;

CREATE TABLE CUSTOMER(
Customer_ID int primary key auto_increment,
Customer_Name varchar(60),
first_name VARCHAR(50),
last_name VARCHAR(50),
Telephone varchar(20),
Address varchar(60),
Email varchar(30)
);

CREATE TABLE orders(
  order_id INT PRIMARY KEY auto_increment,
  customer_id INT,
  due_date DATE,
  order_date DATE,
  delivery_method varchar (30),
  total_amount DECIMAL(10, 2),
  FOREIGN KEY(customer_id) REFERENCES customers (customer_id),
  FOREIGN KEY(product_id) REFERENCES product(product_id)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  product_cost float,
  product_instore bool,
  price DECIMAL(10, 2)
);
