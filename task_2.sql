-- Create Authors table
CREATE TABLE IF NOT EXISTS authors(
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  author_name VARCHAR(215) NOT NULL
);

-- Create Books table
CREATE TABLE IF NOT EXISTS books(
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(130) NOT NULL,
  author_id INT NOT NULL,
  price DOUBLE NOT NULL,
  publication_date DATE,

  CONSTRAINT FK_AuthorID FOREIGN KEY (author_id)
  REFERENCES authors(author_id)
);

-- Create the Customers table
CREATE TABLE IF NOT EXISTS customers(
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) NOT NULL UNIQUE,
  address TEXT
);

-- Create the Orders table
CREATE TABLE IF NOT EXISTS orders(
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT NOT NULL,
  order_date DATE,
  CONSTRAINT FK_CustomerId FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create the Order_Details table
CREATE TABLE IF NOT EXISTS order_details(
  orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT NOT NULL,
  book_id INT NOT NULL,
  quantity DOUBLE NOT NULL,
  CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  CONSTRAINT FK_OrderDetails_Books FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

SHOW TABLES;
SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_details;