TECHNICAL REPORT - EXTRACT, TRANSFORM, LOAD

Our group's proposal is to explore the uderstanding of data scientist job advertisements in Australia. We explored the data sources on Kaggle and found a unique dataset from indeed.com. This was the list of job opportunities for data scientists or similar advertised on 25th October 2019 for Australia. We examined this dataset and was satisfied that it met most of our requirement.

We then explored the idea of making this dataset more meaningful. We believed there was value to correlate the job postings with unemployment data. This will give the user an insight on competetiveness of the job market. 

Based on the dataset we have identified, the group then decided to proceed using PostgreSQL. We assess and concluded that the datasets we have are relational. It will be efficient to load the data into PostgreSQL for future data analysis work. 

### EXTRACT ###

The dataset consists of two parts. The first dataset is "datascientist_jobs_in_australia_Oct_25_2019" was downloaded from kaggle.com. This was then uploaded into our project Github location for collaboration. This dataset provided information on the job title being advertised, the company advertising it, the company's profile on indeed.com, the rating of the company, the location of the job, the length of time the job has been advertised on indeed.com and summary of the job. 

The next dataset is "SA4 Time Series". This dataset was downloaded from https://lmip.gov.au/default.aspx?LMIP/Downloads/ABSLabourForceRegion. This was then uploaded into our project Github location for collaboration. This dataset provided information on the latest trends of employment and unemployment for all states and Australia as a whole. 


### TRANSFORM ###

Based on the dataset we have extracted, we reviewed and assessed this for the purposes of our task. We identified how the relationship between the three datasets will work. We also identified parts of the dataset that are redundant for our task. We also examined the validity and completeness of the dataset. 

For "datascientist_jobs_in_australia_Oct_25_2019", we set the index. We then identified the duplicate rows and removed the duplicated. We kept the first row of the duplicated rows. 

Due to the amount of data within this dataset, we decided to split the dataset into two tables. One table is about the job posted while the other table is about the organisation that posted the job. 

We observed that companies without a Company Profile in indeed.com.au did not have a valid link. In this instance, these columns were populated with n/a. We replaced this with "Not Available". 

Some companies did not have ratings too. These could be due to the lack of a Company Profile or a very new company advertising with indeed.com.au. In this instance, these ratings were updated with "No Rating". 

For column that showed how long ago the job was posted, we found this to have very little value to our task. Hence, we dropped this column from our use. 

For location, we found some instances where the city was not provided or the state was stipulated in the city column. Where the city data was not available, we replaced this with "N/A". We also replaced the long-form of the state with its appropriate three letter acronym. 

The summary table below shows the key updates : 

| Original Column | Updated Column| Description of updates|
| :-------------: |:-------------:| :-------------:|
|Title|Job Posting title|Changed Header name|
|Company|Organisation|Changed Header name|
|cpage|Indeed Profile Page|Changed Header name; replaced "N/A" where applicable|
|ratings|Indeed Ratings|Changed Header name; replaced "No rating" where applicable|
|summary|No update|Dropped from dataset|
|city|location|Changed Header name; updated location with appropriate states|

The first table is described as below : 

| id | Job Posting Title| Organisation|Location| State|
| :-------------: |:-------------:| :-------------:|:-------------:| :-------------:|
| int | varchar| varchar|varchar| varchar(3)|

The second table is desribed as follows : 


| id | Organisation| Indeed Profile Page|Indeed Rating|
| :-------------: |:-------------:| :-------------:|:-------------:| 
| int | varchar| varchar|varchar| float|


The next dataset we transformed was the SA4 Time Series. This dataset contained data from 1978 up to 2020. We dropped all the data except for October 2019. The following is the final format the data is presented. 

| State | Unemployment Rate| Employment Rate| Participation Rate|
| :-------------: |:-------------:| :-------------:| :-------------:|
| varchar(3) | float| float| float|

Based on these tables, we establised the relationships and primary keys for the schema. Our schema is displayed in QuickDBD-ETL Homework. For each table, we assigned the appropriate primary key. The following shows these : 

| Table | Primary Key|
| :-------------: |:-------------:|
| organisation_information | organisation|
| job_information | id|
| labour_market_information | state|

### Load ###

The final stage of this task is to load. We decided that the most effective method to load and use this data is using PostgresQL. We 