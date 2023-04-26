-- 2001 YRBS data questions:
-- q25: made a suicide plan within the past 12 months (1: yes, 2:no)
-- q26: how many times did you attempt suicide in the past 12 months (1: 0 times, 2: 1 time, 3: 2 or 3 times,
--																	  4: 4 or 5 times, 5: 6 or more times)

SELECT q25, q26
FROM xxhq;


CREATE TABLE child_suicide AS (
	SELECT 
			CASE WHEN q25::int = 1 THEN 'yes'
				 WHEN q25::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q26::int = 1 THEN '0 times'
				 WHEN q26::int = 2 THEN '1 times'
				 WHEN q26::int = 3 THEN '2 or 3 times'
				 WHEN q26::int = 4 THEN '4 or 5 times'
				 WHEN q26::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts
	FROM xxhq
);

-- Total children surveyed
SELECT COUNT(suicide_plan) AS suicide_plan_count,
	   COUNT(suicide_attempts) AS suicide_attempts_count 
FROM child_suicide;
-- suicide_plan = 13405, suicide_attemps = 11959

-- Count of how many planned a suicide
SELECT COUNT(suicide_plan)
FROM child_suicide
WHERE suicide_plan LIKE 'yes';
-- 1861


-- Percentage of children who planned a suicide in the past 12 months
SELECT ((1861)::float / (COUNT(suicide_plan))::float) AS percentage_planned
FROM child_suicide;
-- 13.88%

-- Count of how many attempted suicide
SELECT COUNT(suicide_attempts)
FROM child_suicide
WHERE suicide_attempts != '0 times';
-- 1099

-- Percentage of children who attempted suicide in the past 12 months
SELECT ((1099)::float / (COUNT(suicide_attempts))::float) AS percentage_attempted
FROM child_suicide;
-- 9.19%


CREATE TABLE master_df AS (
	SELECT 
			CASE WHEN q25::int = 1 THEN 'yes'
				 WHEN q25::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q26::int = 1 THEN '0 times'
				 WHEN q26::int = 2 THEN '1 times'
				 WHEN q26::int = 3 THEN '2 or 3 times'
				 WHEN q26::int = 4 THEN '4 or 5 times'
				 WHEN q26::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts,
	
			CASE WHEN q18::int = 1 THEN '0 times'
				 WHEN q18::int = 2 THEN '1 times'
				 WHEN q18::int = 3 THEN '2 or 3 times'
				 WHEN q18::int = 4 THEN '4 or 5 times'
				 WHEN q18::int = 5 THEN '6 or 7 times'
				 WHEN q18::int = 6 THEN '8 or 9 times'
				 WHEN q18::int = 7 THEN '10 or 11 times'
				 WHEN q18::int = 8 THEN '12 or more times'
				 END AS fights,
	
			CASE WHEN q23::int = 1 THEN 'yes'
				 WHEN q23::int = 2 THEN 'no'
				 END AS sad
	
	FROM xxhq
);


-- Fighting questions
-- q18: During the past 12 months, how many times were you in a physical fight?

-- Total children surveyed
SELECT COUNT(fights) AS fight_count
FROM master_df;
-- fight_count = 13579

-- Count of how many kids where in a fight
SELECT COUNT(fights)
FROM master_df
WHERE fights != '0 times';
-- 4432

-- Percentage of children who where in a fight during the past 12 months
SELECT ((4432)::float / (COUNT(fights))::float) AS percentage_fighting
FROM master_df;
-- 33.14%

-- Sad questions
-- Q23: During the past 12 months, did you ever feel so sad or 
-- hopeless almost every day for two weeks or more in a row
-- that you stopped doing some usual activities? 

-- Total children surveyed
SELECT COUNT(sad) AS sad_count
FROM master_df;
--13541

-- Count of how many kids were sad or hopeless
SELECT COUNT(sad)
FROM master_df
WHERE sad LIKE 'yes';
-- 3999

-- Percentage of children who were sad or hopeless during the past 12 months
SELECT ((3999)::float / (COUNT(sad))::float) AS percentage_sad
FROM master_df;
-- 29.53%









