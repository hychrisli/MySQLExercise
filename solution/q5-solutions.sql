-- Calculate total time spent per user (There are overlapping periods)


SELECT
	uid,
	SUM(subt) total_time
FROM(
	SELECT
		uid, 
		p, 
		MIN(starttime),
		MAX(endtime),
		MAX(endtime) - MIN(starttime) AS subt
	FROM 
		(SELECT 
			uid, 
			(CASE WHEN @preu != uid THEN @part = 1
				ELSE CASE WHEN @preend > starttime THEN @part := @part
					ELSE @part := @part + 1 END END) AS p,
			starttime, 
			endtime,
			@preu := uid,
			@preend := endtime
		
		FROM 
			Q5Activity,
			(SELECT @part := 0, @preu := 0, @preend := 0) var
		
		ORDER BY uid, starttime) win
	GROUP BY uid, p) sub
GROUP BY uid
	