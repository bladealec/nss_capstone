# Alec Blade's NSS Capstone Project

## Table of Contents
* [Overview](#Overview)
* [Motivation](#Motivation)
* [Data Questions](#Data-Question)
* [Data Sources](#Data-Sources)
* [Technical Process](#Technical-Process)
* [Future Implications](#Future-Implications)

## Overview
As someone who plans to have kids, I am interested in the effects of childhood internet use. This analysis shall search for correlations between internet use and childhood success. The data questions involve comparing internet usage to test scores, fitness, and mental health across the United States. The data is to be gathered from the [Census Bureau](https://www.census.gov/topics/population/computer-internet/data/tables.All.List_315069412.html#list-tab-List_315069412), [Nation’s Report Card](https://www.nationsreportcard.gov/api_documentation.aspx), and [Centers for Disease Control and Prevention](https://chronicdata.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-Youth-Risk/vba9-s8jp). APIs and possibly pdf scrapping will be used to collect the data. Minor cleaning is known to be needed; however, new challenges are expected to arise during EDA.

## Motivation
<details>
 <summary> Its all about the kids!! </summary>
 <br>I am a young adult planning on having a family, and I would like to know what will aid in my children’s success. Since the dominating appearance of the internet, much debate has been on the advantages and disadvantages of granting children internet access. I would like to see if there is any clear correlation between internet use and childhood success.
</details> 

## Data Question
Is internet exposure beneficial or detrimental to a child’s success?
<details>
 <summary> MVP Questions</summary>
 
1.	As the number of children (ages 3 – 17) have increased internet access, do test scores for 4th, 8th, or 12th-grade increase?
<br>(Scale: Country, United States of America)

2.	Is there a strong correlation between internet users and childhood obesity? 
<br>(Scale: Country, United States of America)

3.	Does the amount of internet users correlate to children’s mentality, e.g., feelings of anxiety/depression or general bullying?
<br>(Scale: Country, United States of America)

</details>
<details>
 <summary> Stretch Questions</summary>
 
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

## Technical Process

<details>
 <summary> Tools:</summary>
 <br>
<p align="left"> <a href="https://www.postgresql.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" alt="postgresql" width="40" height="40"/> </a>
&nbsp;
<a href="https://www.python.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a>
&nbsp;
<a href="https://www.microsoft.com/en-us/microsoft-365/excel" target="_blank" rel="noreferrer"> <img src="https://play-lh.googleusercontent.com/37EzETO6gZyKmCg2kBIFX1e9gkubxZrVa5fHJ6yOaa7VvEShHjKv2RdtwnZt9Sk258s=w240-h480-rw" alt="excel" width="40" height="40"/> </a> 
&nbsp;
<a href="https://www.tableau.com/" target="_blank" rel="noreferrer"> <img src="https://pbs.twimg.com/profile_images/1268207088683020288/d9agkn4h_400x400.jpg" alt="powerbi" width="40" height="40"/> </a> </p>
</details>

<details>
 <summary> Data Acquisition </summary>
<br>Finding the data was by far the most challenging part of this project. Once I found my data sources, the real fun began. The fun being building progams to collect the data from the source. For example, I constructed a for loop that pulled in test score information for each year, each state (in the USA), each grade, and each subject. I also discovered the ESF Database Migration Toolkit which allowed me to pull in Microsft Access file types into pgAdmin where I could then write SQL querries to pull in the exact information I needed.
</details>

<details>
 <summary> Data Cleaning and EDA </summary>
<br>Data cleaning and EDA included converting state abbreviations to their full names, converting multiple year columns into a single column, calculating percentages from counts of individuals, joining data frames, calculating correlation coefficients, sorting survey questions, replacing categorical numbers with their respective text, and making sure I had suifficient yearly records to accuralety assess internet access trends.
</details>

<details>
 <summary> Dashboarding </summary>
<br>I used Tableau to display my findings with line plots, scatter plots, and interactive maps. I chose to to use navigation buttons instead of a story, so I could keep some additional features that don't transfer easily into stories. Overall, the dashboard is highly interactive and contains immediate insights into correllations between the internet and childhood success. 
</details>

## Data Insights

<details>
 <summary> Children's Academic Proficency (USA)</summary>
<br>4th and 8th graders' composite scores for reading and mathematics have positve medium to positive strong correlations with home internet access. <br><br>
 
12th graders' composite scores for reading and mathematics have negative medium correlations with internet access.
</details>

<details>
 <summary> Children's Fitness (USA and Global) </summary>
<br>For the scope of the USA, 4th, 8th, and 12th graders have very strong and postive correlations with weight problems and internet access.<br><br>
 
On a global scope, all grades have positive medium correlations with weight problems and internet access.
</details>

<details>
 <summary> Children's Mental Health (USA) </summary>
<br>Child suicide rates have been fairly consistent since 1991 with only a 2% increase when looking at 2019. Becuase of this, there is a postive and weak correlation between child suicide and internet access.<br><br>
 
Physical fighting in children and their internet access have a negative and strong correlation. <br>
 
The percentage of children feeling sad or hopeless has a negative and medium correlation to internet access.
 
</details>

## Future Implications
<details>
 <summary> Children's Academic Proficency </summary>
 <br>
 Since 4th and 8th graders have positive correlations to internet access and 12th grades have a negative correlation, screen time and what each grade is primarily doing while on the internet should be looked into next.
</details>

<details>
 <summary> Children's Fitness </summary>
 <br>
 The current study only looks at obese and overweight as described by an individuals BMI. However, BMI does not account for body composition such as muscle mass or body fat percentages. Because of this, the next factors to be assessed for childhood fitness and their internet access should be the amount of physical activity they participate in and the food groups they are consuming. 
</details>

<details>
 <summary> Children's Mental Health </summary>
 <br>
 Currently, the CDC only has data on children feeling sad or hopeless starting in 2003. I believe having data on this measure prior to anyone having access to the internet will improve the accuracy of the correlation coefficient. Additionally, this project looks into physical bullying, but online bullying should also be assessed.
</details>
