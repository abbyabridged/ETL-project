-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/AiT1nT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Table 1 re: labour market
CREATE TABLE "labour_market_information" (
  	"state" varchar(3) PRIMARY KEY,
	"employment rate" float   NOT NULL,
    "unemployment rate" float   NOT NULL,
    "participation rate" float   NOT NULL
	);

-- Table 2 re: job posting organisation
CREATE TABLE "organisation_information" (
    "id" SERIAL,
    "organisation" varchar PRIMARY KEY,
    "Indeed profile page" varchar   NOT NULL,
    "Indeed rating" varchar   NOT NULL
);

-- Table 3 re: job posted
CREATE TABLE "job_information" (
    id int PRIMARY KEY,
    "job posting title" varchar   NOT NULL,
    "organisation" varchar NOT NULL,
    "location" varchar   NOT NULL,
	"state" varchar,
	FOREIGN KEY (state) REFERENCES labour_market_information(state),
	FOREIGN KEY (organisation) REFERENCES organisation_information(organisation)
);
