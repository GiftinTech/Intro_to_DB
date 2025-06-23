CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE IF NOT EXISTS Authors(
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Books(
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT,
  price DOUBLE,
  publication_date DATE,

  FOREIGN KEY(author_id)
  REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Customers(
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT
);

CREATE TABLE IF NOT EXISTS Orders(
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,

  FOREIGN KEY (customer_id)
  REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Order_Details(
  orderdetailid INT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE,

  CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (order_id)
  REFERENCES Orders(order_id),

  CONSTRAINT FK_OrderDetails_Books FOREIGN KEY (book_id)
  REFERENCES Books(book_id)
);

SHOW TABLES;
SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Order_Details;