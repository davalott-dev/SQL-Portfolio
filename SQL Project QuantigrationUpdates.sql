CREATE DATABASE QuantigrationUpdates;
USE QuantigrationUpdates;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Street VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(20),
    ZipCode VARCHAR(10),
    Telephone VARCHAR(20)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    SKU VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create RMA table
CREATE TABLE RMA (
    RMA_ID INT PRIMARY KEY,
    OrderID INT,
    Reason VARCHAR(100),
    Status VARCHAR(50),
    Step VARCHAR(100),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert sample customers
INSERT INTO Customers VALUES
(100001, 'Kelley', 'Rivas', '888 White Fabien Blvd.', 'Austin', 'TX', '90064', '709-851-1060'),
(100002, 'Paul', 'Revere', '12 Freedom Trail', 'Framingham', 'MA', '01701', '508-555-1010'),
(100003, 'MaryAnne', 'Jenkins', '1 Coconut Way', 'Jupiter', 'FL', '33458', '321-555-8907');

-- Insert sample orders
INSERT INTO Orders VALUES
(120001, 100001, 'ENT-24-10F', 'Enterprise Switch 10GigE SFP+ 24 Port'),
(120002, 100002, 'TEST-001', 'Framingham test order'),
(120003, 100003, 'ENT-48-10F', 'Enterprise Switch 10GigE SFP+ 48 port');

-- Insert sample RMAs
INSERT INTO RMA (OrderID, Reason, Status, Step) VALUES
(120002, 'Damaged on arrival', 'Pending', 'Inspect item'),
(120003, 'Wrong item', 'Pending', 'Awaiting return'),
(120001, 'Rejected', 'Rejected', 'No further action');

-- Count of orders from customers in Framingham, MA
SELECT COUNT(*) AS OrderCount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE c.City = 'Framingham' AND c.State = 'MA';

-- Select all customers from Massachusetts
SELECT * FROM Customers
WHERE State = 'MA';

-- Count customers in Woonsocket, RI
SELECT COUNT(*) AS WoonsocketCount
FROM Customers
WHERE City = 'Woonsocket' AND State = 'RI';

-- Check current status and step of a specific RMA
SELECT Status, Step FROM RMA WHERE OrderID = 120002;

-- Update the RMA record for that Order
UPDATE RMA
SET Status = 'Complete',
    Step = 'Credit Customer Account'
WHERE OrderID = 120002;

-- Delete all rejected RMA records
DELETE FROM RMA
WHERE Reason = 'Rejected';

-- Rename table "Customers" to "Collaborators"
RENAME TABLE Customers TO Collaborators;

-- Output Orders to file (server must allow outfile)
SELECT * FROM Orders
INTO OUTFILE '/tmp/orders_output.csv'
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';
