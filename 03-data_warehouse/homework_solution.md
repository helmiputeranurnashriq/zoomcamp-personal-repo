# HOMEWORK SETUP

- Manually download all dataset of green taxi in 2022
- Upload folder to GCS

CREATE EXTERNAL TABLE
CREATE OR REPLACE EXTERNAL TABLE subtle-isotope-412719.hw3.green_taxi_2022_external

OPTIONS (
  FORMAT = "PARQUET",
  URIS = ["gs://hw3_green_taxi_2022_hputera/green_tripdata_2022*.parquet"]
)

CREATE MATERIALIZED TABLE
