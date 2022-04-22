CREATE DATABASE RestaurantManagement

CREATE TABLE Customer(
    CustomerID int NOT NULL,
    Name VARCHAR(24) NOT NULL,
    Address VARCHAR(100),
    PhoneNumber VARCHAR(10),
    EmailID VARCHAR(20),
    CardNumber VARCHAR(16),
    Password varchar(15)
    CONSTRAINT Cust_PK PRIMARY KEY(CustomerID)
);

GO

CREATE TABLE Main_Order
(
    OrderID INT NOT NULL,
    CustomerID INT NOT NULL,
    Tax INT,
    OrderTime DATETIME,
    OrderType VARCHAR(10),
    CHECK (OrderType in ('InHouse','Online')),
    PaymentID INT,
    CONSTRAINT Order_PK PRIMARY KEY (OrderID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

GO

CREATE TABLE Employee(
    EmployeeID int NOT NULL,
    EmployeeName VARCHAR(24) NOT NULL,
    Designation VARCHAR(24) NOT NULL,
    CHECK(Designation in ('Chef','DeliveryBoy','Admin', 'Waiter')),
    EmailID VARCHAR(20),
    PhoneNumber VARCHAR(10),
    Address VARCHAR(100),
    SSN int NOT NULL,
    DateOfBirth DATE,
    Gender VARCHAR(24),
    CHECK (Gender in ('Male','Female')),
    CONSTRAINT Emp_PK PRIMARY KEY(EmployeeID)
);

GO

CREATE TABLE Payment
(
    PaymentID INT NOT NULL,
    Amount INT,
    Mode VARCHAR(10),
    CHECK(Mode IN ('CreditCard','Wallet','DebitCard')),
    [Status] VARCHAR(10),
    CHECK([Status] IN ('Sucess','Failed','InProcess')),
    PaymentTimeStamp DATETIME,
    CONSTRAINT Payment_PK PRIMARY KEY (PaymentID),
);

GO

CREATE TABLE Ingredients
(
    IngredientsID INT NOT NULL,
    Title VARCHAR(20),
    ProductType VARCHAR(10),
    CHECK(ProductType IN ('Veggies','Dairy','Meat','Spices')),
    Quantity INT,
    ManufDate DATE,
    ExpiryDate DATE,
    Price INT
    CONSTRAINT Ingredient_PK PRIMARY KEY (IngredientsID),
);

GO

CREATE TABLE Vendor
(
    VendorID INT NOT NULL,
    VendorName VARCHAR(20),
    VendorAddress VARCHAR(100),
    VendorPhone VARCHAR(10),
    VendorType VARCHAR(10),
    CHECK(VendorType IN ('Wholesale','Retail')),
    CONSTRAINT Vendor_PK PRIMARY KEY (VendorID),
);

GO

CREATE TABLE OrderLine
(
    OrderLineID INT NOT NULL,
    OrderID INT NOT NULL,
    DishID INT NOT NULL,
    Quantity INT,
    Amount INT
    CONSTRAINT OrderLine_PK PRIMARY KEY (OrderLineID),
);

GO

CREATE TABLE Delivery  
(
    DeliveryID INT NOT NULL,
    DeliveryBoyEmpID INT NOT NULL,
    DropLocation VARCHAR(50),
    PickupTime DATETIME,
    DropTime DATETIME,
    Cost INT,
    Tip INT
    CONSTRAINT Delivery_PK PRIMARY KEY (DeliveryID),
);

GO

CREATE TABLE Dish
(
    DishID INT NOT NULL,
    DishName VARCHAR(25),
    DishDescription VARCHAR(100),
    CONSTRAINT Dish_PK PRIMARY KEY (DishID),
);


GO

CREATE TABLE Chef(
    ChefEmployeeID INT PRIMARY KEY,
    CuisineType VARCHAR(15),
    FOREIGN KEY (ChefEmployeeID) REFERENCES Employee(EmployeeID)
);

GO

CREATE TABLE DeliveryBoy(
    DeliveryBoyEmployeeID INT PRIMARY KEY,
    VehicleNumber VARCHAR(8),
    FOREIGN KEY (DeliveryBoyEmployeeID) REFERENCES Employee(EmployeeID)
);

GO

CREATE TABLE SysAdmin(
    SysAdminEmployeeID INT PRIMARY KEY,
    SystemNumber INT,
    FOREIGN KEY (SysAdminEmployeeID) REFERENCES Employee(EmployeeID)
);


GO

CREATE TABLE Waiter(
    WaiterEmployeeID INT PRIMARY KEY,
    Shift Varchar(10),
    FOREIGN KEY (WaiterEmployeeID) REFERENCES Employee(EmployeeID)
);

GO

CREATE TABLE Inhouse (
    InhouseOrderID INT PRIMARY KEY,
    WaiterEmployeeID INT,
    ReservationNumber varchar(20) NOT NULL,
    FOREIGN KEY (InhouseOrderID) REFERENCES Main_Order(OrderID),
    FOREIGN KEY (WaiterEmployeeID) REFERENCES Waiter(WaiterEmployeeID), 
);

GO

CREATE TABLE OnlineOrder (
    OnlineOrderID INT PRIMARY KEY,
    SysAdminEmployeeID INT NOT NULL,
    CouponCode varchar(20) NOT NULL,
    FOREIGN KEY (OnlineOrderID) REFERENCES Main_Order(OrderID),
    FOREIGN KEY (SysAdminEmployeeID) REFERENCES SysAdmin(SysAdminEmployeeID), 
);

GO

CREATE TABLE Supplies
(
    VendorID int,
    IngredientsID int,
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID),
    FOREIGN KEY (IngredientsID) REFERENCES Ingredients(IngredientsID)
);


GO

CREATE TABLE RecipeIngredients
(
    IngredientsID int,
    OrderLineID int,
    FOREIGN KEY (IngredientsID) REFERENCES Ingredients(IngredientsID),
    FOREIGN KEY (OrderLineID) REFERENCES OrderLine(OrderLineID),
);

GO

CREATE TABLE Prepares
(
    OrderID int,
    ChefEmployeeID int,
    FOREIGN KEY (OrderID) REFERENCES Main_Order(OrderID),
    FOREIGN KEY (ChefEmployeeID) REFERENCES Chef(ChefEmployeeID),
);

CREATE TABLE AssignedTo
(
    OnlineOrderID int,
    DeliveryBoyEmployeeID int,
    PRIMARY KEY (OnlineOrderID),
    FOREIGN KEY (OnlineOrderID) REFERENCES OnlineOrder(OnlineOrderID),
    FOREIGN KEY (DeliveryBoyEmployeeID) REFERENCES DeliveryBoy(DeliveryBoyEmployeeID),
);

--A. STORED PROCEDURES
-- STORED PROCEDURE 1
/*
To check the payments made using Payment Type, eg.: Credit Card, Debit Card, etc.
*/
CREATE PROCEDURE CCOrder @paymentmode VARCHAR(15)
AS BEGIN
SELECT mr.OrderId, mr.Tax, py.Amount
FROM Main_Order mr JOIN Payment py ON mr.PaymentID = py.PaymentID WHERE py.Mode=@paymentmode;
END
GO

-- STORED PROCEDURE 2
/*
To search the menu based on Keyword, eg.: Vegan, Chicken, etc.
*/
CREATE PROCEDURE FoodType(@keyword VARCHAR(15))
AS BEGIN
SELECT OrderLine.OrderID, Dish.DishName
FROM OrderLine JOIN Dish ON OrderLine.DishID=Dish.DishID
WHERE Dish.DishName LIKE @keyword
END
GO

-- STORED PROCEDURE 3
/*
For Inhouse order, once the order is completed, payment record will be updated. 
As this is a repititive process, we created this procedure to update the payments automatically.
*/
CREATE PROCEDURE PaymentUpdate @orderid int, @paymentid int
AS Begin
UPDATE Main_Order
SET PaymentID = @paymentid
WHERE OrderID = @orderid;
END

--B. VIEWS
-- VIEW 1
/*
This view gives you a report with payment information whose status is Failed, or Inprocess.
*/
CREATE VIEW Payment_Information AS 

SELECT PM.PaymentID, MO.OrderID, MO.OrderType, PM.Mode, PM.Amount,PM.[Status]
FROM Payment PM INNER JOIN Main_Order MO on MO.PaymentID = PM. PaymentID
WHERE PM.[Status] IN (SELECT [Status] FROM Payment where [Status] in ('Failed','InProcess'));


-- VIEW 2
/*
This view gives you a report with Order information for Italian cuisine Type. 
*/
CREATE VIEW [Orders Information for Italian Cuisine] AS 

SELECT MO.OrderID, MO.OrderType, C.ChefEmployeeID, C.CuisineType
FROM Main_Order AS MO INNER JOIN Prepares P ON P.OrderID = MO. OrderID INNER JOIN Chef AS C ON C.ChefEmployeeID = P.ChefEmployeeID
WHERE CuisineType =  (SELECT CuisineType FROM Chef where CuisineType like 'Ita%' );


-- VIEW 3
/*
This view gives you a report with Vendor information that supplies ingredients of Product types like Veggies, Dairy,etc.
*/
CREATE VIEW [Vendor Information] AS 

SELECT V.VendorID, V.VendorName, V.VendorType, I.IngredientsID, I.Title, I.ProductType
FROM Vendor AS V  INNER JOIN Supplies S ON S.VendorID = V.VendorID  INNER JOIN Ingredients AS I ON I.IngredientsID = S.IngredientsID
WHERE I.ProductType IN (SELECT ProductType FROM Ingredients where ProductType in ('Veggies','Dairy'));


--C. DML TRIGGER
--DML Trigger
/*
This trigger will not let the admin to make any changes in the employee database unless the restaurant is open for business.
*/
CREATE TRIGGER trAllDMLOperationsOnEmployee 
ON Employee
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  PRINT 'YOU CANNOT PERFORM DML OPERATION'
  ROLLBACK TRANSACTION
END

ALTER TRIGGER trAllDMLOperationsOnEmployee 
ON Employee
FOR INSERT, UPDATE, DELETE
AS
BEGIN
  IF DATEPART(HH,GETDATE()) < 9
  BEGIN
    PRINT 'INVALID TIME'
    ROLLBACK TRANSACTION
  END 
END

--D. TABLE LEVEL CHECK CONSTRAINTS -
/*
We have created 7 table level check constraints during table creations. The details are as follows -
1. On Table - "Order", Column - "OrderType", Check Constraints - Inhouse, Online.
2. On Table - "Employee", Column - "Designation", Check Constraints - Chef, DeliveryBoy, Admin, Waiter.
3. On Table - "Employee", Column - "Gender", Check Constraints - Male, Female.
4. On Table - "Payment", Column - "Mode", Check Constraints - Credit Card, Debit Card, Wallet.
5. On Table - "Payment", Column - "Status", Check Constraints - Sucess, Fail, InProcess.
6. On Table - "Ingredients", Column - "ProductType", Check Constraints - Veggie, Dairy, Meat, Spices.
7. On Table - "Vendor", Column - "VendorType", Check Constraints - Retail, Wholesale.
*/

--E. USER DEFINED FUNCTIONS -
/*
This function will calculate total price of specific ingredient available in inventory 
& is stored in "totalcost_inventory" column.
*/
create function dbo.total_price (@Quantity INT, @Price INT)
returns INT
AS
BEGIN
	return @Quantity*@Price;
END

ALTER TABLE Ingredients
 ADD totalcost_inventory AS dbo.total_price(Quantity,Price) ; 

 --F. DATA ENCRYPTION
 /*
 We Encrypted 2 columns – 'SSN' from Employee Table and 'Password' from Customer.
 */

 --Encryption 1
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Restaraunt@123';


SELECT name KeyName, 
    symmetric_key_id KeyID, 
    key_length KeyLength, 
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;


GO
CREATE CERTIFICATE Certificate_test WITH SUBJECT = 'Protect restaraunt data';

GO
SELECT name CertName, 
    certificate_id CertID, 
    pvt_key_encryption_type_desc EncryptType, 
    issuer_name Issuer
FROM sys.certificates;

CREATE SYMMETRIC KEY SymKey_test WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE Certificate_test;

SELECT name KeyName, 
    symmetric_key_id KeyID, 
    key_length KeyLength, 
    algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

ALTER TABLE Customer
ADD Password_encrypt varbinary(MAX)


OPEN SYMMETRIC KEY SymKey_test
        DECRYPTION BY CERTIFICATE Certificate_test;

UPDATE Customer
        SET Password_encrypt = EncryptByKey (Key_GUID('SymKey_test'), Password)
        FROM Customer;
        GO

CLOSE SYMMETRIC KEY SymKey_test;
          

-- Encryption 2
ALTER TABLE EmployeeADD SSN_encrypt varbinary(MAX)OPEN SYMMETRIC KEY SymKey_test        DECRYPTION BY CERTIFICATE Certificate_test;UPDATE Employee        SET SSN_encrypt = EncryptByKey (Key_GUID('SymKey_test'), STR(SSN))        FROM Employee;CLOSE SYMMETRIC KEY SymKey_test;      --G NON-CLUSTERED INDEXES ---NON CLUSTERED INDEX 1

CREATE NONCLUSTERED INDEX IX_Main_Order_OrderID 
ON Main_Order (OrderID);


--NON CLUSTERED INDEX 2

CREATE NONCLUSTERED INDEX [IX_Ingredients_ProductType]
ON Ingredients (ProductType,Title);


--NON CLUSTERED INDEX 3

CREATE NONCLUSTERED INDEX [IX_Delivery_DeliveryID]
ON Delivery (DeliveryID,DeliveryBoyEmpID);


