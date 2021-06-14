-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Vaccination" (
    "State" VARCHAR   NOT NULL,
    "Fips" INT   NOT NULL,
    "County" Text   NOT NULL,
    "Population" INT   NOT NULL,
    "Total_Current_Cases" INT   NOT NULL,
    "Vaccination_Completed" INT   NOT NULL,
    "Vaccination_Initiated" INT   NOT NULL,
    "Vaccination_Administered" INT   NOT NULL,
    "Completion_Percentage" decimal(5,2)   NOT NULL,
    CONSTRAINT "pk_Vaccination" PRIMARY KEY (
        "Fips"
     )
);

CREATE TABLE "Death_Infections" (
    "Fips" INT   NOT NULL,
    "Deaths" INT   NOT NULL,
    "Infection_Rate" decimal(8,5)   NOT NULL,
    CONSTRAINT "pk_Death_Infections" PRIMARY KEY (
        "Fips"
     )
);

CREATE TABLE "Test_Case_Ratios" (
    "Fips" INT   NOT NULL,
    "Test_Positive_Ratio" decimal(5,4)   NOT NULL,
    "Case_Density" decimal(7,6)   NOT NULL,
    CONSTRAINT "pk_Test_Case_Ratios" PRIMARY KEY (
        "Fips"
     )
);

CREATE TABLE "Cases_By_Date" (
    "County" VARCHAR   NOT NULL,
    "Date" Date   NOT NULL,
    "Cases" INT   NOT NULL,
    CONSTRAINT "pk_Cases_By_Date" PRIMARY KEY (
        "County"
     )
);

CREATE TABLE "Wayne_County_Cases" (
    "County" VARCHAR   NOT NULL,
    "Date" Date   NOT NULL,
    "Cases" INT   NOT NULL,
    "Cases_Diff" decimal(5,1)   NOT NULL,
    "Pct_Change" decimal(6,2)   NOT NULL,
    CONSTRAINT "pk_Wayne_County_Cases" PRIMARY KEY (
        "County"
     )
);

CREATE TABLE "Cases_By_Month" (
    "County" VARCHAR   NOT NULL,
    "Date" date   NOT NULL,
    "Cases" INT   NOT NULL,
    "Month" VARCHAR   NOT NULL,
    "Day" INT   NOT NULL,
    "Year" INT   NOT NULL,
    CONSTRAINT "pk_Cases_By_Month" PRIMARY KEY (
        "County"
     )
);

CREATE TABLE "April_2020_2021" (
    "County" VARCHAR   NOT NULL,
    "Cases" INT   NOT NULL,
    "Month_Year" TEXT   NOT NULL,
    CONSTRAINT "pk_April_2020_2021" PRIMARY KEY (
        "County"
     )
);

