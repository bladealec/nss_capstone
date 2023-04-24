-- 2019 YRBS data questions:
-- q28: made a suicide plan within the past 12 months (1: yes, 2:no)
-- q29: how many times did you attempt suicide in the past 12 months (1: 0 times, 2: 1 time, 3: 2 or 3 times,
--																	  4: 4 or 5 times, 5: 6 or more times)

SELECT q27, q28
FROM xxhq;


CREATE TABLE child_suicide AS (
	SELECT 
			CASE WHEN q27::int = 1 THEN 'yes'
				 WHEN q27::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q28::int = 1 THEN '0 times'
				 WHEN q28::int = 2 THEN '1 times'
				 WHEN q28::int = 3 THEN '2 or 3 times'
				 WHEN q28::int = 4 THEN '4 or 5 times'
				 WHEN q28::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts
	FROM xxhq
);

-- Total children surveyed
SELECT COUNT(suicide_plan) AS suicide_plan_count,
	   COUNT(suicide_attempts) AS suicide_attempts_count 
FROM child_suicide;
-- suicide_plan = 13422, suicide_attemps = 10520

-- Count of how many planned a suicide
SELECT COUNT(suicide_plan)
FROM child_suicide
WHERE suicide_plan LIKE 'yes';
-- 2151


-- Percentage of children who planned a suicide in the past 12 months
SELECT ((2151)::float / (COUNT(suicide_plan))::float) AS percentage_planned
FROM child_suicide;
-- 16.03%

-- Count of how many attempted suicide
SELECT COUNT(suicide_attempts)
FROM child_suicide
WHERE suicide_attempts != '0 times';
-- 1067

-- Percentage of children who attempted suicide in the past 12 months
SELECT ((1067)::float / (COUNT(suicide_attempts))::float) AS percentage_attempted
FROM child_suicide;
-- 10.14%