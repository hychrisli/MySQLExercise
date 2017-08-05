-- 1. for each store show the difference in sales between 2014 and 2015
SELECT 
storeId,
SUM(CASE WHEN YEAR(purchaseDate) = 2014 THEN 1 ELSE 0 END) AS VAL14,
SUM(CASE WHEN YEAR(purchaseDate) = 2015 THEN 1 ELSE 0 END) AS VAL15
FROM purchase
GROUP BY storeId;

-- 2. % of all customers that have purchases at least 1 product

SELECT COUNT(DISTINCT p.custId) / COUNT(DISTINCT c.custId)
FROM Customer c LEFT OUTER JOIN Purchase p ON p.custId = c.custId;

SELECT
	pcnt.total / ccnt.total
FROM 
	(SELECT COUNT(DISTINCT custId) total FROM Purchase) AS pcnt,
	(SELECT COUNT(custId) total FROM Customer) AS ccnt
	
-- 3.  list all the customers that live in a state 'CA', 
-- ordered by the number of unique products they bought

SELECT 
	custId, 
	name,
COUNT(DISTINCT productId)
FROM Purchase 
	JOIN Customer USING(custId)
WHERE stateId = 1
GROUP BY custId
ORDER BY COUNT(DISTINCT productId);	


-- 4. Find the earliest born and last born customers, by gender, 
-- who have bought at least 1 product.

SELECT DISTINCT
c.custId,
c.name,
c.gender,
c.birthday

FROM 
	Customer c
	JOIN Purchase USING(custId),
	(SELECT
		gender,
		MAX( birthday ) AS lastBorn,
		MIN( birthday ) AS firstBorn
	FROM
		Customer JOIN Purchase USING(custId)
	GROUP BY
		gender) AS gma 
WHERE c.gender = gma.gender
AND ( c.birthday = gma.lastBorn OR c.birthday = gma.firstBorn)
ORDER BY gender, birthday
	