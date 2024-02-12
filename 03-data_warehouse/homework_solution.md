# GCS SETUP

- Manually download all dataset of green taxi in 2022
- Upload folder to GCS 


# BIG QUERY SETUP

## 1. Create External Table
`CREATE OR REPLACE EXTERNAL TABLE subtle-isotope-412719.hw3.green_taxi_2022_external

OPTIONS (
  FORMAT = "PARQUET",
  URIS = ["gs://hw3_green_taxi_2022_hputera/green_tripdata_2022*.parquet"]
)`

## 2. Create Materialized Table
`CREATE OR REPLACE TABLE subtle-isotope-412719.hw3.green_taxi_2022_materialized_table
AS (
  SELECT * FROM `subtle-isotope-412719.hw3.green_taxi_2022`
)`


# Homework Solution
1. Question 1:
`SELECT count(*) 
FROM
`hw3.green_taxi_2022_external` `

- result:
840402 rows.

2. Question 2:
`SELECT count(distinct PULocationID)

FROM
`hw3.green_taxi_2022_materialized_table`
Result: 0 MB for the External Table, 6.41MB for the Materialized Table`


