


create database sales_insight

use sales_insight


-- Create Regions Table
CREATE TABLE Regions (
    RegionID INT PRIMARY KEY IDENTITY(1,1),
    RegionName VARCHAR(100) NOT NULL,
    Manager VARCHAR(100)
);


-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    RegionID INT FOREIGN KEY REFERENCES Regions(RegionID),
    JoinDate DATE
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
);

-- creating the referece in between Products and Customers table
ALTER TABLE Products
ADD CustomerID INT;

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Customers
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);


-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
	RegionID INT FOREIGN KEY REFERENCES Regions(RegionID),  -- creating the reference with Regions table 
    SaleDate DATE,
    Quantity INT,
    Discount DECIMAL(5, 2) DEFAULT 0 -- in percentage
);

 -- Insert into Regions (Indian Zones)
 INSERT INTO Regions (RegionName, Manager) VALUES 
('North', 'Ravi Mehra'),
('South', 'Priya Nair'),
('East', 'Amitav Sinha'),
('West', 'Sneha Desai');

-- Insert into Customers
INSERT INTO Customers (Name, Email, RegionID, JoinDate) VALUES
('Aarav Sharma', 'aarav.sharma@example.com', 1, '2022-03-10'),
('Diya Patel', 'diya.patel@example.com', 2, '2021-06-22'),
('Kabir Reddy', 'kabir.reddy@example.com', 3, '2023-01-15'),
('Anaya Nair', 'anaya.nair@example.com', 4, '2022-09-05'),
('Vivaan Singh', 'vivaan.singh@example.com', 1, '2023-05-01'),
('Isha Kapoor', 'isha.kapoor@example.com', 2, '2021-12-10'),
('Reyansh Joshi', 'reyansh.joshi@example.com', 3, '2022-02-14'),
('Saanvi Deshmukh', 'saanvi.deshmukh@example.com', 4, '2022-07-01'),
('Arjun Verma', 'arjun.verma@example.com', 1, '2021-08-19'),
('Mira Das', 'mira.das@example.com', 2, '2022-10-23'),
('Krishna Iyer', 'krishna.iyer@example.com', 3, '2023-02-01'),
('Tanya Roy', 'tanya.roy@example.com', 4, '2021-11-12'),
('Dev Sharma', 'dev.sharma@example.com', 1, '2022-01-17'),
('Riya Gupta', 'riya.gupta@example.com', 2, '2023-04-04'),
('Aditya Bhat', 'aditya.bhat@example.com', 3, '2022-06-15'),
('Sneha Rao', 'sneha.rao@example.com', 4, '2023-01-09'),
('Yash Malhotra', 'yash.malhotra@example.com', 1, '2023-03-12'),
('Kiara Menon', 'kiara.menon@example.com', 2, '2021-09-27'),
('Rudra Pillai', 'rudra.pillai@example.com', 3, '2022-08-03'),
('Aisha Kulkarni', 'aisha.kulkarni@example.com', 4, '2023-05-20');

-- Insert into Products

INSERT INTO Products (ProductName, Category, UnitPrice) VALUES
('Smartphone Device', 'Electronics', 17999.00),
('Laptop Backpack', 'Accessories', 1299.00),
('Office Chair', 'Furniture', 4999.00),
('LED Tube Light', 'Electronics', 599.00),
('Bluetooth Speaker', 'Electronics', 2499.00),
('Protein Snack', 'Food', 120.00),
('Wooden Study Table', 'Furniture', 8999.00),
('Cotton Kurta', 'Clothing', 999.00),
('Running Shoes', 'Clothing', 1999.00),
('Instant Coffee', 'Food', 299.00),
('Smart Watch', 'Electronics', 3599.00),
('Steel Water Bottle', 'Accessories', 499.00),
('Mobile Charger', 'Electronics', 699.00),
('Tiffin Box', 'Accessories', 349.00),
('Jeans Pants', 'Clothing', 1599.00),
('Hand Sanitizer', 'Health', 149.00),
('Yoga Mat', 'Fitness', 799.00),
('Portable Fan', 'Electronics', 1499.00),
('Wireless Mouse', 'Electronics', 899.00),
('LED Monitor', 'Electronics', 7499.00);


-- Insert into Sales

INSERT INTO Sales (CustomerID, ProductID, SaleDate, Quantity, Discount) VALUES
(1, 1, '2023-07-15', 1, 5.00),
(2, 3, '2023-06-20', 2, 10.00),
(3, 5, '2023-05-10', 1, 0.00),
(4, 6, '2023-07-01', 3, 5.00),
(5, 2, '2023-04-18', 1, 0.00),
(6, 10, '2023-08-05', 2, 15.00),
(7, 7, '2023-03-12', 1, 10.00),
(8, 9, '2023-02-19', 2, 5.00),
(9, 4, '2023-01-28', 1, 0.00),
(10, 8, '2023-06-06', 1, 0.00),
(11, 12, '2023-07-22', 3, 5.00),
(12, 14, '2023-07-30', 2, 5.00),
(13, 11, '2023-03-18', 1, 10.00),
(14, 13, '2023-05-25', 2, 0.00),
(15, 15, '2023-06-13', 1, 5.00),
(16, 17, '2023-07-07', 1, 0.00),
(17, 16, '2023-08-03', 2, 0.00),
(18, 19, '2023-05-15', 1, 10.00),
(19, 18, '2023-06-01', 2, 15.00),
(20, 20, '2023-07-19', 1, 5.00);

