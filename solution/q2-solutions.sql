-- a. The names of all salespeople that have an order with Samsonic.

SELECT DISTINCT
sp.name
FROM Q2Orders o
	JOIN Q2Salesperson sp ON o.salesperson_id = sp.id 
WHERE o.cust_id = 4;


-- b. The names of all salespeople that do not have any order with Samsonic.
SELECT
sp.name
FROM Q2Salesperson sp
WHERE sp.id NOT IN (SELECT salesperson_id FROM Q2Orders WHERE cust_id = 4);

-- c. The names of salespeople that have 2 or more orders.
SELECT
sp.name
FROM Q2Salesperson sp
	JOIN Q2Orders o ON o.salesperson_id = sp.id
GROUP BY sp.id
HAVING COUNT(`number`) > 1;

-- d. The names and ages of all salespersons must having a salary of 100,000 or greater.

SELECT name, age
FROM Q2Salesperson
WHERE salary >= 100000;


-- e. What sales people have sold more than 1400 total units?

SELECT
sp.name
FROM Q2Orders o
	JOIN Q2Salesperson sp ON o.salesperson_id = sp.id
GROUP BY o.salesperson_id
HAVING SUM(o.amount) > 1400;

-- f. When was the earliest and latest order made to Samony?

SELECT
MAX(order_date), MIN(order_date)
FROM Q2Orders 
WHERE cust_id = 7;


SELECT
MAX(order_date)
FROM Q2Orders 
WHERE cust_id = 6
UNION ALL
SELECT
MIN(order_date)
FROM Q2Orders 
WHERE cust_id = 6;


