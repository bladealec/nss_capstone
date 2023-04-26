-- 1999 YRBS data questions:
-- q20: made a suicide plan within the past 12 months (1: yes, 2:no)
-- q21: how many times did you attempt suicide in the past 12 months (1: 0 times, 2: 1 time, 3: 2 or 3 times,
--																	  4: 4 or 5 times, 5: 6 or more times)

SELECT q24, q25
FROM xxhq;


CREATE TABLE child_suicide AS (
	SELECT 
			CASE WHEN q24::int = 1 THEN 'yes'
				 WHEN q24::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q25::int = 1 THEN '0 times'
				 WHEN q25::int = 2 THEN '1 times'
				 WHEN q25::int = 3 THEN '2 or 3 times'
				 WHEN q25::int = 4 THEN '4 or 5 times'
				 WHEN q25::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts
	FROM xxhq
);

-- Total children surveyed
SELECT COUNT(suicide_plan) AS suicide_plan_count,
	   COUNT(suicide_attempts) AS suicide_attempts_count 
FROM child_suicide;
-- suicide_plan = 15270, suicide_attemps = 13621

-- Count of how many planned a suicide
SELECT COUNT(suicide_plan)
FROM child_suicide
WHERE suicide_plan LIKE 'yes';
-- 2128


-- Percentage of children who planned a suicide in the past 12 months
SELECT ((2128)::float / (COUNT(suicide_plan))::float) AS percentage_planned
FROM child_suicide;
-- 13.94%

-- Count of how many attempted suicide
SELECT COUNT(suicide_attempts)
FROM child_suicide
WHERE suicide_attempts != '0 times';
-- 1162

-- Percentage of children who attempted suicide in the past 12 months
SELECT ((1162)::float / (COUNT(suicide_attempts))::float) AS percentage_attempted
FROM child_suicide;
-- 8.53%

-- Fighting questions
-- q17: During the past 12 months, how many times were you in a physical fight?

CREATE TABLE master_df AS (
	SELECT 
			CASE WHEN q24::int = 1 THEN 'yes'
				 WHEN q24::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q25::int = 1 THEN '0 times'
				 WHEN q25::int = 2 THEN '1 times'
				 WHEN q25::int = 3 THEN '2 or 3 times'
				 WHEN q25::int = 4 THEN '4 or 5 times'
				 WHEN q25::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts,
	
			CASE WHEN q17::int = 1 THEN '0 times'
				 WHEN q17::int = 2 THEN '1 times'
				 WHEN q17::int = 3 THEN '2 or 3 times'
				 WHEN q17::int = 4 THEN '4 or 5 times'
				 WHEN q17::int = 5 THEN '6 or 7 times'
				 WHEN q17::int = 6 THEN '8 or 9 times'
				 WHEN q17::int = 7 THEN '10 or 11 times'
				 WHEN q17::int = 8 THEN '12 or more times'
				 END AS fights
	FROM xxhq
);


-- Total children surveyed
SELECT COUNT(fights) AS fight_count
FROM master_df;
-- fight_count = 15115

-- Count of how many kids where in a fight
SELECT COUNT(fights)
FROM master_df
WHERE fights != '0 times';
-- 5249

-- Percentage of children who where in a fight during the past 12 months
SELECT ((5249)::float / (COUNT(fights))::float) AS percentage_fighting
FROM master_df;
-- 34.73%