CREATE DATABASE store_management;
use store_management;
CREATE TABLE Account (
    accID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50) NOT NULL ,
    password VARCHAR(50) NOT NULL ,
    permision INT(11) NOT NULL ,
    status INT(11) NOT NULL
);
CREATE TABLE Store (
	storeID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    storeName VARCHAR(50),
    price float,
    productType varchar(50),
    startDate DATE,
    endDate DATE,
    totalPrice float,
    accID INT(11),
    CONSTRAINT fk_acc FOREIGN KEY (accID) REFERENCES Account(accID)
);
CREATE TABLE AverageSales (
	saleID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    averagePrice float NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    storeID INT(11),
    CONSTRAINT fk_store1 FOREIGN KEY (storeID) REFERENCES Store(storeID)
);

CREATE TABLE Promotion (
	promotionID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    promotionName varchar(50),
    startDate DATE,
    endDate DATE,
    value float,
    storeID INT(11),
    CONSTRAINT fk_store2 FOREIGN KEY (storeID) REFERENCES Store(storeID)
);
CREATE TABLE Benefit (
	benefitID INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    benefitName varchar(50),
    storeID INT(11),
    CONSTRAINT fk_store3 FOREIGN KEY (storeID) REFERENCES Store(storeID)
);

INSERT INTO Account (email, password, permision, status) VALUES 
('user1@gmaiil.com', 'password1', 1, 1),
('user2@gmaiil.com', 'password2', 2, 1),
('user3@gmaiil.com', 'password3', 1, 0),
('user4@gmaiil.com', 'password4', 2, 1),
('user5@gmaiil.com', 'password5', 1, 1);

INSERT INTO Store (storeName, price, productType, startDate, endDate, totalPrice, accID) VALUES 
('Store A', 1000.0, 'Electronics', '2023-01-01', '2023-01-31', 5000.0, 1),
('Store B', 1500.0, 'Clothing', '2023-02-01', '2023-02-28', 7500.0, 2),
('Store C', 2000.0, 'Groceries', '2023-03-01', '2023-03-31', 10000.0, 3),
('Store D', 2500.0, 'Books', '2023-04-01', '2023-04-30', 12500.0, 4),
('Store E', 3000.0, 'Furniture', '2023-05-01', '2023-05-31', 15000.0, 5);

INSERT INTO AverageSales (averagePrice, startDate, endDate) VALUES 
(100.0, '2023-01-01', '2023-01-31'),
(150.5, '2023-02-01', '2023-02-28'),
(200.0, '2023-03-01', '2023-03-31'),
(250.75, '2023-04-01', '2023-04-30'),
(300.0, '2023-05-01', '2023-05-31');

INSERT INTO Promotion (promotionName, startDate, endDate, value, storeID) VALUES 
('Promo A', '2023-01-01', '2023-01-10', 10.0, 1),
('Promo B', '2023-02-01', '2023-02-10', 15.0, 2),
('Promo C', '2023-03-01', '2023-03-10', 20.0, 3),
('Promo D', '2023-04-01', '2023-04-10', 25.0, 4),
('Promo E', '2023-05-01', '2023-05-10', 30.0, 5);

INSERT INTO Benefit (benefitName, storeID) VALUES 
('Benefit A', 1),
('Benefit B', 2),
('Benefit C', 3),
('Benefit D', 4),
('Benefit E', 5);

