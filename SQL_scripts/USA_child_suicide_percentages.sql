-- 1991 YRBS data questions:
-- q20: made a suicide plan within the past 12 months (1: yes, 2:no)
-- q21: how many times did you attempt suicide in the past 12 months (1: 0 times, 2: 1 time, 3: 2 or 3 times,
--																	  4: 4 or 5 times, 5: 6 or more times)

SELECT q20, q21
FROM xxhq;


CREATE TABLE child_suicide AS (
	SELECT 
			CASE WHEN q20::int = 1 THEN 'yes'
				 WHEN q20::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q21::int = 1 THEN '0 times'
				 WHEN q21::int = 2 THEN '1 times'
				 WHEN q21::int = 3 THEN '2 or 3 times'
				 WHEN q21::int = 4 THEN '4 or 5 times'
				 WHEN q21::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts
	FROM xxhq
);

-- Total children surveyed
SELECT COUNT(suicide_plan) AS suicide_plan_count,
	   COUNT(suicide_attempts) AS suicide_attempts_count 
FROM child_suicide;
-- suicide_plan = 10818, suicide_attemps = 10980

-- Count of how many planned a suicide
SELECT COUNT(suicide_plan)
FROM child_suicide
WHERE suicide_plan LIKE 'yes';
-- 1938


-- Percentage of children who planned a suicide in the past 12 months
SELECT ((1938)::float / (COUNT(suicide_plan))::float) AS percentage_planned
FROM child_suicide;
-- 17.91%

-- Count of how many attempted suicide
SELECT COUNT(suicide_attempts)
FROM child_suicide
WHERE suicide_attempts != '0 times';
-- 833

-- Percentage of children who attempted suicide in the past 12 months
SELECT ((833)::float / (COUNT(suicide_attempts))::float) AS percentage_attempted
FROM child_suicide;
-- 7.59%

-- Fighting questions
-- q16: During the past 12 months, how many times were you in a physical fight?

CREATE TABLE master_df AS (
	SELECT 
			CASE WHEN q20::int = 1 THEN 'yes'
				 WHEN q20::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q21::int = 1 THEN '0 times'
				 WHEN q21::int = 2 THEN '1 times'
				 WHEN q21::int = 3 THEN '2 or 3 times'
				 WHEN q21::int = 4 THEN '4 or 5 times'
				 WHEN q21::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts,
	
			CASE WHEN q16::int = 1 THEN '0 times'
				 WHEN q16::int = 2 THEN '1 times'
				 WHEN q16::int = 3 THEN '2 or 3 times'
				 WHEN q16::int = 4 THEN '4 or 5 times'
				 WHEN q16::int = 5 THEN '6 or 7 times'
				 WHEN q16::int = 6 THEN '8 or 9 times'
				 WHEN q16::int = 7 THEN '10 or 11 times'
				 WHEN q16::int = 8 THEN '12 or more times'
				 END AS fights
	FROM xxhq
);


-- Total children surveyed
SELECT COUNT(fights) AS fight_count
FROM master_df;
-- fight_count = 12148

-- Count of how many kids where in a fight
SELECT COUNT(fights)
FROM master_df
WHERE fights != '0 times';;
-- 5216

-- Percentage of children who where in a fight during the past 12 months
SELECT ((5216)::float / (COUNT(fights))::float) AS percentage_fighting
FROM master_df;
-- 42.94%