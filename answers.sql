-- Question 1: 1NF --

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE
);

CREATE TABLE Order_Products (
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (OrderID, ProductID)
);

-- Question 2: 2NF --

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);


CREATE TABLE Order_Products (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);