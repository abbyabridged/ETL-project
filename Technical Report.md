TECHNICAL REPORT - EXTRACT, TRANSFORM, LOAD

Our group's proposal is to explore the uderstanding of data scientist job advertisements in Australia. We explored the data sources on Kaggle and found a unique dataset from indeed.com. This was the list of job opportunities for data scientists or similar advertised on 25th October 2019 for Australia. We examined this dataset and was satisfied that it met most of our requirement.

We then explored the idea of making this dataset more meaningful. We believed there was value to correlate the job postings with details about of the advertising company. We then explored the datasets available on ASX 200 companies. We chose this dataset as this represented the top 200 blue chip companies operating within Australia. We found two useful sources, one from ASX itself and another was from ASX200list.com. We evaluated both and concluded both datasets had value to further improve our ETL project. 

Based on the dataset we have identified, the group then decided to proceed using PostgreSQL. We assess and concluded that the datasets we have are relational. It will be efficient to load the data into PostgreSQL for future data analysis work. 

### EXTRACT ###

The dataset consists of three parts. The first dataset is "datascientist_jobs_in_australia_Oct_25_2019" was downloaded from kaggle.com. This was then uploaded into our project Github location for collaboration. This dataset provided information on the job title being advertised, the company advertising it, the company's profile on indeed.com, the rating of the company, the location of the job, the length of time the job has been advertised on indeed.com and summary of the job. 

The next dataset is "ASXListedCompanies". This dataset was downloaded from www.asx.com.au. This was then uploaded into our project Github location for collaboration. This dataset provided information on the Company name, the ASX code it is assigned with and the GICS Industry Group. The GICS industry group is important to this exercise as it gives the user an understanding if the job is advertised by a blue chip company, a smaller company such as a start-up or a government or NGO entity. 

Our final dataset is "20200601-asx200". This dataset was downloaded from www.asx200list.com. This was then uploaded into our project Github location for collaboration. This dataset also provded the company name and it's ASX code. It also provides the sector it operates in. This dataset contained market capitalisation. This information is pertinent to demonstrate the size of the company. It also provided further information such as weight (in terms of ASX 200 and market capitalisation) and a high-level summary of the sectors that contribute to the ASX 200. 


### TRANSFORM ###




