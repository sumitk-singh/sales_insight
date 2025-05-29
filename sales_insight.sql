


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
    UnitPrice DECIMAL(10, 2)
);

-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
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

