# ETL-project

## Team members  
Abby Asomani and Arvin Seeva

## Project proposal

Our ETL project will explore data scientist job listings in Australia, incorporating data about companies advertising data science jobs (e.g. sector type). 

### Extract:
Currently our data sources include:  

* Job postings from Indeed.com: https://www.kaggle.com/santokalayil/data-scientist-jobs-in-australia-october-25-2019 

* Company data from ASX: https://www.asx.com.au/asx/research/listedCompanies.do 


### Transform:
We will join the datasets on company name, drop irrelevant columns (e.g. rating, summary), and check for missing values. We will design an ERD schema in order to create a relational database.  


### Load:
Our final database will be made available in PostgreSQL.
