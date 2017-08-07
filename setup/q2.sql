CREATE TABLE Q2Salesperson
(
id INT, 
name VARCHAR(10),
age INT, 
salary INT
);

INSERT INTO Q2Salesperson (id, name, age, salary) 
VALUES 
	(1, 'Abe', 61, 140000),
	(2, 'Bob', 34, 44000),
	(5, 'Chris', 34, 40000),
	(7, 'Dan', 41, 52000),
	(8, 'Ken', 57, 115000),
	(11, 'Joe', 38, 38000);
COMMIT;

INSERT INTO Q2Salesperson (id, name, age, salary) 
VALUES (12, 'Paul', 60, 52000);


CREATE TABLE Q2Customer
(
id INT,
name VARCHAR(10),
city VARCHAR(10),
`industry type` VARCHAR(1)
);

INSERT INTO Q2Customer (id, name, city, `industry type`)
VALUES
	(4, 'Samsonic', 'Pleasant', 'J'),
	(6, 'Panasung', 'Oaktown', 'J'),
	(7, 'Samony', 'Jackson', 'B'),
	(9, 'Orange', 'Jackson', 'B');


CREATE TABLE Q2Orders
(
`number` INT,
order_date DATE, 
cust_id INT, 
salesperson_id INT, 
amount INT
);

INSERT INTO Q2Orders (`number`, order_date, cust_id, salesperson_id, amount)
VALUES
	(10, STR_TO_DATE('8/2/96', '%m/%d/%y'), 4, 2, 540),
	(20, STR_TO_DATE('1/30/99', '%m/%d/%y'), 4, 8, 1800),
	(30, STR_TO_DATE('7/14/95', '%m/%d/%y'), 9, 1, 460),
	(40, STR_TO_DATE('1/29/98', '%m/%d/%y'), 7, 2, 2400),
	(50, STR_TO_DATE('2/3/98', '%m/%d/%y'), 6, 7, 600),
	(60, STR_TO_DATE('3/2/98', '%m/%d/%y'), 6, 7, 720),
	(70, STR_TO_DATE('5/6/98', '%m/%d/%y'), 9, 7, 150);

