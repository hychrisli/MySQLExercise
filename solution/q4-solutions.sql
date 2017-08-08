-- a. UNION Remove ALL duplicates, even those FROM the original TABLE
SELECT * FROM q4salesperson
UNION
SELECT * FROM q4salesperson;


-- b. RANK ALL ROWS BY salary with variable 
-- (Make sure people with same salary get same rank)
SELECT
	name, 
	salary,
	(CASE 
		WHEN @pre != salary THEN @r := @r + 1
		ELSE @r END ) AS `rank`,
	@pre := salary AS pre
FROM 
	q2salesperson, 
	(SELECT @r := 0, @pre := 0 ) AS var 
ORDER BY salary DESC;


-- c. RANK ALL ROWS BY salary WITHOUT variables

SELECT
	s1.name, 
	s1.salary,
	(SELECT COUNT(DISTINCT s2.salary) + 1 
		FROM q2salesperson s2 WHERE salary > s1.salary) AS r
FROM 
	q2salesperson s1
ORDER BY salary DESC;

-- d. RANK salary by dept, using variable

SELECT 
dept_id,
name, 
salary,
(CASE 
	WHEN @pd != dept_id THEN @r := 1
	WHEN @ps != salary THEN @r := @r + 1
	ELSE @r END) `rank`,
@pd := dept_id AS pd,
@ps := salary AS ps
FROM 
	q4employee,
	(SELECT @r := 0, @pd := 0, @ps := 0) var
ORDER BY dept_id, salary DESC

-- e. RANK salary by dept, WITHOUT variable

SELECT
	e1.dept_id,
	e1.name, 
	e1.salary,
	(SELECT COUNT(DISTINCT salary) + 1 
		FROM q4employee 
		WHERE salary > e1.salary AND dept_id = e1.dept_id ) AS r
FROM 
	q4employee e1
ORDER BY e1.dept_id, e1.salary DESC

-- f. Computing a distribution
SET @n := 5

SELECT
CONCAT('[', bucket.sz * FLOOR(salary / bucket.sz), '-', bucket.sz * ( FLOOR(salary / bucket.sz) + 1), ')') AS `bucket`,
COUNT(salary) CNT
FROM 
	q4dist,
	(SELECT FLOOR((MAX(salary) - MIN(salary)) / @n) AS sz FROM q4dist) bucket

GROUP BY FLOOR(salary / bucket.sz)
ORDER BY FLOOR(salary / bucket.sz);
