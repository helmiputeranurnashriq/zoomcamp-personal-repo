# GCS SETUP

- Manually download all dataset of green taxi in 2022
- Upload folder to GCS 


# BIG QUERY SETUP

## 1. Create External Table
``CREATE OR REPLACE EXTERNAL TABLE subtle-isotope-412719.hw3.green_taxi_2022_external
OPTIONS (
  FORMAT = "PARQUET",
  URIS = ["gs://hw3_green_taxi_2022_hputera/green_tripdata_2022*.parquet"]
)``

## 2. Create Materialized Table
``CREATE OR REPLACE TABLE subtle-isotope-412719.hw3.green_taxi_2022_materialized_table
AS (
  SELECT * FROM `subtle-isotope-412719.hw3.green_taxi_2022`
)``


# Homework Solution
1. Question 1:
``SELECT count(*) 
FROM
`hw3.green_taxi_2022_external``

- result:
840402 rows.

2. Question 2:
``SELECT count(distinct PULocationID)
FROM
`hw3.green_taxi_2022_materialized_table`
Result: 0 MB for the External Table, 6.41MB for the Materialized Table``

3. Question 3:
``
SELECT count(fare_amount)
FROM
`hw3.green_taxi_2022_materialized_table`
WHERE fare_amount = 0``

- result : 1622 rows

4. Question 4:
Partition by lpep_pickup_datetime
Cluster on PUlocationID (PULocationID return error for partition)

5. Question 5:
``
SELECT distinct PULocationID
FROM `hw3.green_taxi_2022_partitioned` //partition table
FROM `hw3.green_taxi_2022_materialized_table` //Materialized table
WHERE lpep_pickup_datetime BETWEEN "2022-06-01" and "2022-06-30"
``
6. Question 6:
  GCP bucket because of 0MB usage
   
7. Question 7:
  False
