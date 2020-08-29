-- Query to check successful load

select * from job_information;

select * from organisation_information;

select * from labour_market_information;

-- Join tables on state

select job_information."job posting title", job_information.organisation, job_information.state, labour_market_information."unemployment rate"
from job_information
inner join labour_market_information
on job_information.state = labour_market_information.state
where job_information."job posting title" = 'Data Scientist';

-- Join tables on organisation

select job_information."job posting title", job_information.organisation, organisation_information."Indeed rating"
from job_information
inner join organisation_information
on job_information.organisation = organisation_information.organisation
where organisation_information.organisation = 'Atlassian';