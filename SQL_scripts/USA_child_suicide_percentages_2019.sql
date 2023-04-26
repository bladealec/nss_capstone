-- 2019 YRBS data questions:

-- Suicide
-- q28: made a suicide plan within the past 12 months (1: yes, 2:no)
-- q29: how many times did you attempt suicide in the past 12 months (1: 0 times, 2: 1 time, 3: 2 or 3 times,
--																	  4: 4 or 5 times, 5: 6 or more times)

-- Bullying
-- q23: During the past 12 months, have you ever been bullied on school property? (1: yes, 2: no)
-- q24: During the past 12 months, have you ever been electronically bullied?  (1:yes , 2: no)

--Fighting
--
CREATE TABLE master_df AS (
	SELECT 
			CASE WHEN q27::int = 1 THEN 'yes'
				 WHEN q27::int = 2 THEN 'no'
			 	  END AS suicide_plan,
			  
			CASE WHEN q28::int = 1 THEN '0 times'
				 WHEN q28::int = 2 THEN '1 times'
				 WHEN q28::int = 3 THEN '2 or 3 times'
				 WHEN q28::int = 4 THEN '4 or 5 times'
				 WHEN q28::int = 5 THEN '6 or mores times'
				 END AS suicide_attempts,
	
			CASE WHEN q23::int = 1 THEN 'yes'
				 WHEN q23::int = 2 THEN 'no'
				 END AS school_bullying,
	
			CASE WHEN q24::int = 1 THEN 'yes'
				 WHEN q24::int = 2 THEN 'no'
				 END AS online_bullying,
	
			CASE WHEN q17::int = 1 THEN '0 times'
				 WHEN q17::int = 2 THEN '1 times'
				 WHEN q17::int = 3 THEN '2 or 3 times'
				 WHEN q17::int = 4 THEN '4 or 5 times'
				 WHEN q17::int = 5 THEN '6 or 7 times'
				 WHEN q17::int = 6 THEN '8 or 9 times'
				 WHEN q17::int = 7 THEN '10 or 11 times'
				 WHEN q17::int = 8 THEN '12 or more times'
				 END AS fights,
	
			CASE WHEN q25::int = 1 THEN 'yes'
				 WHEN q25::int = 2 THEN 'no'
				 END AS sad	
	
	FROM xxhq
);


-- Suicide questions
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


-- Bullying questions

-- Total children surveyed
SELECT COUNT(school_bullying) AS school_bully_count,
	   COUNT(online_bullying) online_bullying_count 
FROM master_df;
-- school_bullying = 13447, online_bullying = 13485

-- Count of how many where bullied at school
SELECT COUNT(school_bullying)
FROM master_df
WHERE school_bullying LIKE 'yes';
-- 2703

-- Count of how many where bullied online
SELECT COUNT(online_bullying)
FROM master_df
WHERE online_bullying LIKE 'yes';
-- 2138

-- Percentage of children who where bullied at school in the past 12 months
SELECT ((2703)::float / (COUNT(school_bullying))::float) AS percentage_school
FROM master_df;
-- 20.10%

-- Percentage of children who where bullied online in the past 12 months
SELECT ((2138)::float / (COUNT(online_bullying))::float) AS percentage_online
FROM master_df;
-- 15.85%

-- Fighting questions
-- q18: During the past 12 months, how many times were you in a physical fight?

-- Total children surveyed
SELECT COUNT(fights) AS fight_count
FROM master_df;
-- fight_count = 10771

-- Count of how many kids where in a fight
SELECT COUNT(fights)
FROM master_df
WHERE fights != '0 times';
-- 2384

-- Percentage of children who where in a fight during the past 12 months
SELECT ((2384)::float / (COUNT(fights))::float) AS percentage_fighting
FROM master_df;
-- 22.13%

-- Sad questions
-- Q23: During the past 12 months, did you ever feel so sad or 
-- hopeless almost every day for two weeks or more in a row
-- that you stopped doing some usual activities? 

-- Total children surveyed
SELECT COUNT(sad) AS sad_count
FROM master_df;
--13421

-- Count of how many kids were sad or hopeless
SELECT COUNT(sad)
FROM master_df
WHERE sad LIKE 'yes';
-- 4926

-- Percentage of children who were sad or hopeless during the past 12 months
SELECT ((4926)::float / (COUNT(sad))::float) AS percentage_sad
FROM master_df;
-- 36.70%




































