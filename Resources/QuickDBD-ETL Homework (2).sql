-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/AiT1nT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- table 1 about organisation
CREATE TABLE "organisation_information" (
    "id" int   NOT NULL,
    "organisation" varchar   NOT NULL,
    "Indeed profile page" varchar   NOT NULL,
    "Indeed rating" float   NOT NULL,
    CONSTRAINT "pk_organisation_information" PRIMARY KEY (
        "organisation"
     )
);

-- table 2 about job posted
CREATE TABLE "job_information" (
    "id" int   NOT NULL,
    "job posting title" varchar   NOT NULL,
    "organisation" varchar NOT NULL,
    "location" varchar   NOT NULL,
	"state" varchar NOT NULL,
	FOREIGN KEY (state) references labour_market_information(state),
    CONSTRAINT "pk_job_information" PRIMARY KEY (
        "id"
     )
);

-- table 3 about employment market
CREATE TABLE "labour_market_information" (
    "state" varchar(3)   NOT NULL,
	"employment rate" float   NOT NULL,
    "unemployement rate" float   NOT NULL,
    "participation rate" float   NOT NULL,
    CONSTRAINT "pk_labour_market_information" PRIMARY KEY (
        "state"
     )
);

