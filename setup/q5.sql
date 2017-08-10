DROP TABLE IF EXISTS Q5Activity ;

CREATE TABLE Q5Activity
(
uid INT, 
eventid INT, 
starttime DATETIME, 
endtime DATETIME
);

INSERT INTO Q5Activity(uid, eventid, starttime, endtime) 
VALUES
	(1, 1, STR_TO_DATE('2017/08/10 14:06:30', '%Y/%m/%d %k:%i:%s'), 
			STR_TO_DATE('2017/08/10 14:11:42', '%Y/%m/%d %k:%i:%s')),
	(1, 2, STR_TO_DATE('2017/08/10 14:10:12', '%Y/%m/%d %k:%i:%s'), 
			STR_TO_DATE('2017/08/10 14:20:10', '%Y/%m/%d %k:%i:%s')),
	(1, 2, STR_TO_DATE('2017/08/10 15:06:30', '%Y/%m/%d %k:%i:%s'), 
			STR_TO_DATE('2017/08/10 15:30:42', '%Y/%m/%d %k:%i:%s')),
	(2, 1, STR_TO_DATE('2017/08/10 14:06:30', '%Y/%m/%d %k:%i:%s'), 
			STR_TO_DATE('2017/08/10 14:11:42', '%Y/%m/%d %k:%i:%s')),
	(2, 2, STR_TO_DATE('2017/08/10 14:10:12', '%Y/%m/%d %k:%i:%s'), 
			STR_TO_DATE('2017/08/10 14:20:10', '%Y/%m/%d %k:%i:%s')),
	(3, 2, STR_TO_DATE('2017/08/10 15:06:30', '%Y/%m/%d %k:%i:%s'), 
			STR_TO_DATE('2017/08/10 15:30:42', '%Y/%m/%d %k:%i:%s'));

			
SELECT * FROM Q5Activity;


