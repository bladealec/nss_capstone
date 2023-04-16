# Alec Blade's NSS Capstone Project

## Overview
As someone who plans to have kids, I am interested in the effects of childhood internet use. This analysis shall search for correlations between internet use and childhood success. The data questions involve comparing internet usage to test scores, fitness, and mental health across the United States. The data is to be gathered from the [Census Bureau](https://www.census.gov/topics/population/computer-internet/data/tables.All.List_315069412.html#list-tab-List_315069412), [Nation’s Report Card](https://www.nationsreportcard.gov/api_documentation.aspx), and [Centers for Disease Control and Prevention](https://chronicdata.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-Youth-Risk/vba9-s8jp). APIs and possibly pdf scrapping will be used to collect the data. Minor cleaning is known to be needed; however, new challenges are expected to arise during EDA.

## Motivation
I am a young adult planning on having a family, and I would like to know what will aid in my children’s success. Since the dominating appearance of the internet, much debate has been on the advantages and disadvantages of granting children internet access. I would like to see if there is any clear correlation between internet use and childhood success. 

## Data Question
Is an increase in internet exposure beneficial or detrimental to a child’s success? Success will be measured by academic proficiency, nutritional health, and mental health.

### MVP Questions:
1.	As the number of internet users (ages 3 – 17) increases, do test scores for 4th, 8th, or 12th grade increase?

2.	Is there a distinct difference in internet usage for areas with a high risk of childhood obesity?

3.	Do children in areas of high internet use have better or worse moods than children in areas of low internet use?

### Stretch Questions:
4.	Is there any connection to young adult (20-29) internet use and employment or degree obtainment rates?

5.	 Is it possible to predict high crime areas through an area’s internet usage?

## Minimum Viable Product (MVP)
All MVP questions shall be answered and presented via a Tableau dashboard. The dashboard shall contain a plethora of visual aids and text to guide the viewer/user. Dashboard text will be descriptive in explaining analysis and dashboard functionalities. A power point will also be constructed to provide a technical process overview. The PowerPoint will include data collection methods, analysis decisions, and any large barriers crossed. The audiences for this presentation are parents, future parents, school boards, and future employers.

## Schedule
1.	Get the Data (4/11/23)
2.	Clean & Explore the Data (4/14/23)
3.	Internal demos (4/21/23)
4.	Tableau and PowerPoint Presentation of Analysis (4/26/23)
5.	Demo Day!! (4/28/23)

## Data Sources
Current data sources only support the MVP. Additional sources will be needed to answer any stretch questions.

-	[United States Census Bureau](https://www.census.gov/topics/population/computer-internet/data/tables.All.List_315069412.html#list-tab-List_315069412)
internet usage by year, state, and age group
 (2001-2012: .csv, 1984-1997: .pdf)

-	[NAEP Data Service API](https://www.nationsreportcard.gov/api_documentation.aspx)
proficiency scores by year, state, grade, subject
(1990-2017; 4th, 8th, 12th grade)

-	[CDC API](https://chronicdata.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-Youth-Risk/vba9-s8jp)
Nutrition, physical activity, and obesity

## Known Issues and Challenges
Issues/challenges are expected to arise during EDA. As for now, the known challenges are as follows:

-	Using Census data, before 1998, will require pdf scrapping.
intro to pdf scrapping

-	The year and location will be keys for joining tables. Each table inputs location differently. (state name/abbreviations/coordinates)

-	CDC data appears to have several null values.

