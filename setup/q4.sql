CREATE TABLE q4salesperson AS SELECT * FROM q2salesperson;

INSERT INTO q4salesperson (id, name, age, salary)
VALUES(5, 'Chris', 34, 40000);
COMMIT;

CREATE TABLE q4employee AS SELECT * FROM q2salesperson;
ALTER TABLE q4employee ADD (dept_id INT);
UPDATE q4employee SET dept_id = id % 3 + 1;

SELECT * FROM q4employee;


CREATE TABLE q4dist AS SELECT * FROM q2salesperson;
INSERT INTO q4dist (id, name, age, salary) SELECT id + 12, CONCAT(name,'1'), age, salary FROM q2salesperson;
INSERT INTO q4dist (id, name, age, salary) SELECT id + 24, CONCAT(name,'2'), age, salary FROM q2salesperson;
