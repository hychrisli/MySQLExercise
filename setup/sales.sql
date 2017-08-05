CREATE TABLE State(
	stateId INT,
	stateAbbr VARCHAR(2)
);

INSERT INTO State (stateId, stateAbbr) VALUES(1, 'CA');
INSERT INTO State (stateId, stateAbbr) VALUES(2, 'UT');
INSERT INTO State (stateId, stateAbbr) VALUES(3, 'MI');

-----------------------
-----------------------

CREATE TABLE Customer(
	custId INT,
	name VARCHAR(10),
	gender VARCHAR(1),
	birthday DATE,
	stateId INT
);

INSERT INTO Customer (custId, name, gender, birthday, stateId)
	VALUES(1, 'Jake', 'M', STR_TO_DATE('1987/05/13', '%Y/%m/%d'), 1);
INSERT INTO Customer (custId, name, gender, birthday, stateId)
	VALUES(2, 'Chris', 'M', STR_TO_DATE('1990/01/15', '%Y/%m/%d'), 1);
INSERT INTO Customer (custId, name, gender, birthday, stateId)
	VALUES(3, 'Macy', 'F', STR_TO_DATE('1963/08/07', '%Y/%m/%d'), 3);
INSERT INTO Customer (custId, name, gender, birthday, stateId)
	VALUES(4, 'Jim', 'M', STR_TO_DATE('1960/10/27', '%Y/%m/%d'), 3);
INSERT INTO Customer (custId, name, gender, birthday, stateId)
	VALUES(5, 'Elen', 'F', STR_TO_DATE('1984/05/03', '%Y/%m/%d'), 1);

---------------------
---------------------

CREATE TABLE Store(
	storeId INT,
	storeName VARCHAR(20),
	stateId INT
)

INSERT INTO Store (storeId, storeName, stateId) 
	VALUES (1, 'Store A', 1);

INSERT INTO Store (storeId, storeName, stateId) 
	VALUES (2, 'Store B', 1);

INSERT INTO Store (storeId, storeName, stateId) 
	VALUES (3, 'Store C', 1);

INSERT INTO Store (storeId, storeName, stateId) 
	VALUES (4, 'Store D', 3);
	

--------------------
--------------------
CREATE TABLE Product
(
	productId INT, 
	productName VARCHAR(20)
);

INSERT INTO Product (productId, productName) VALUES (1, 'Good Shampoo');
INSERT INTO Product (productId, productName) VALUES (2, 'Tasty Wine');
INSERT INTO Product (productId, productName) VALUES (3, 'Black Chocolate');
INSERT INTO Product (productId, productName) VALUES (4, 'Roasted Chicken');
INSERT INTO Product (productId, productName) VALUES (5, 'Sweet Candy');
INSERT INTO Product (productId, productName) VALUES (6, 'Salty Peanuts');

--------------------
--------------------

CREATE TABLE Purchase
(
	purchaseId INT,
	custId INT, 
	storeId INT, 
	productId INT, 
	purchaseDate DATE
);

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (1, 1, 1, 1, STR_TO_DATE('2014/07/01', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (2, 1, 2, 1, STR_TO_DATE('2014/07/02', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (3, 1, 1, 3, STR_TO_DATE('2014/07/03', '%Y/%m/%d'));
	
INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (4, 2, 1, 4, STR_TO_DATE('2014/07/04', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (5, 3, 2, 5, STR_TO_DATE('2014/07/05', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (6, 3, 2, 1, STR_TO_DATE('2014/07/05', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (7, 4, 4, 6, STR_TO_DATE('2014/07/06', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (8, 4, 1, 3, STR_TO_DATE('2014/07/07', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (9, 5, 4, 2, STR_TO_DATE('2014/07/08', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (10, 5, 1, 4, STR_TO_DATE('2014/07/09', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (11, 1, 1, 1, STR_TO_DATE('2015/07/01', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (12, 1, 2, 1, STR_TO_DATE('2015/07/02', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (13, 1, 1, 3, STR_TO_DATE('2015/07/03', '%Y/%m/%d'));
	
INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (14, 2, 1, 4, STR_TO_DATE('2015/07/04', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (15, 3, 2, 5, STR_TO_DATE('2015/07/05', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (16, 3, 2, 1, STR_TO_DATE('2015/07/05', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (17, 4, 4, 6, STR_TO_DATE('2015/07/06', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (18, 4, 1, 3, STR_TO_DATE('2015/07/07', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (19, 5, 4, 2, STR_TO_DATE('2015/07/08', '%Y/%m/%d'));

INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (20, 5, 1, 4, STR_TO_DATE('2015/07/09', '%Y/%m/%d'));
	
INSERT INTO Purchase (purchaseId, custId, storeId, productId, purchaseDate)
	VALUES (21, 3, 2, 6, STR_TO_DATE('2015/07/10', '%Y/%m/%d'));