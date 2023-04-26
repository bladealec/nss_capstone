# Alec Blade's NSS Capstone Project

## Table of Contents
* [Overview](#Overview)
* [Motivation](#Motivation)
* [Data Questions](#Data-Question)
* [Data Sources](#Data-Sources)
* [Technical Overview](#Technical-Overview)
* [Future Implications](#Future-Implications)

## Overview
As someone who plans to have kids, I am interested in the effects of childhood internet use. This analysis shall search for correlations between internet use and childhood success. The data questions involve comparing internet usage to test scores, fitness, and mental health across the United States. The data is to be gathered from the [Census Bureau](https://www.census.gov/topics/population/computer-internet/data/tables.All.List_315069412.html#list-tab-List_315069412), [Nation’s Report Card](https://www.nationsreportcard.gov/api_documentation.aspx), and [Centers for Disease Control and Prevention](https://chronicdata.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-Youth-Risk/vba9-s8jp). APIs and possibly pdf scrapping will be used to collect the data. Minor cleaning is known to be needed; however, new challenges are expected to arise during EDA.

## Motivation
<details>
 <summary> Its all about the kids!! </summary>
 I am a young adult planning on having a family, and I would like to know what will aid in my children’s success. Since the dominating appearance of the internet, much debate has been on the advantages and disadvantages of granting children internet access. I would like to see if there is any clear correlation between internet use and childhood success.
</details> 

## Data Question
Is internet exposure beneficial or detrimental to a child’s success?
<details>
 <summary> MVP Questions:</summary>
 
1.	As the number of children (ages 3 – 17) have increased internet access, do test scores for 4th, 8th, or 12th-grade increase?
<br>(Scale: Country, United States of America)

2.	Is there a strong correlation between internet users and childhood obesity? 
<br>(Scale: Country, United States of America)

3.	Does the amount of internet users correlate to children’s mentality, e.g., feelings of anxiety/depression or general bullying?
<br>(Scale: Country, United States of America)

</details>
<details>
 <summary> Stretch Questions:</summary>
 
4.	For each MVP question, is there a significant difference in the correlation coefficient at a global versus country scale?

5.	Is there any connection to young adult (20-29) internet use and employment or degree obtainment rates?
</details>

## Data Sources
<details>
 <summary> Current data sources only support the MVP and some stretch questions. Additional sources will be needed to answer the rest of the stretch questions.</summary>
 
 -	[United States Census Bureau](https://www.census.gov/)
 <br>Internet access by year, state, and age group
 <br>(1997-2021)

 -	[NAEP Data Service API](https://www.nationsreportcard.gov/)
 <br>Composite scores by year, state, grade, subject
 <br>(1990-2021)

 -	[Centers for Disease Control and Prevention](https://chronicdata.cdc.gov/)
 <br>Childhood weight and mentality issues by Country
 <br>(1975 - 2019)
 
- [The World Bank](https://data.worldbank.org/)
 <br>Global internet usage by Country
 <br>(1960 - 2021)
</details>
