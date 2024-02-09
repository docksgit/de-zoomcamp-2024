-- SETUPS
CREATE OR REPLACE EXTERNAL TABLE `hardy-portal-411910.week_3_hw_dataset_docksgit.green_tripdata_2022`
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://week-3-hw-bucket-docksgit/green-tripdata-2022/green_tripdata_2022-*.parquet']
);

CREATE OR REPLACE TABLE `hardy-portal-411910.week_3_hw_dataset_docksgit.green_tripdata_2022_nonpartitioned`
AS SELECT * FROM `hardy-portal-411910.week_3_hw_dataset_docksgit.green_tripdata_2022`;

-- QUESTION 1
SELECT count(*) FROM `hardy-portal-411910.week_3_hw_dataset_docksgit.green_tripdata_2022`;
-- ANSWER: 840,402

-- QUESTION 2
SELECT COUNT(DISTINCT(PULocationID)) FROM `hardy-portal-411910.week_3_hw_dataset_docksgit.green_tripdata_2022`;
-- ANSWER: This query will process 0 B when run.
SELECT COUNT(DISTINCT(PULocationID)) FROM `hardy-portal-411910.week_3_hw_dataset_docksgit.green_tripdata_2022_nonpartitioned`;
-- ANSWER: This query will process 6.41 MB when run.


-- QUESTION 3
SELECT SUM(IF(fare_amount=0, 1, 0)) FROM `hardy-portal-411910.week_3_hw_dataset_docksgit.green_tripdata_2022`;
-- ANSWER: 1622

-- QUESTION 4
CREATE OR REPLACE TABLE `taxi-rides-ny.nytaxi.fhv_partitioned_tripdata`
PARTITION BY DATE(dropoff_datetime)
CLUSTER BY dispatching_base_num AS (
  SELECT * FROM `taxi-rides-ny.nytaxi.fhv_tripdata`
);

SELECT count(*) FROM  `taxi-rides-ny.nytaxi.fhv_nonpartitioned_tripdata`
WHERE DATE(dropoff_datetime) BETWEEN '2019-01-01' AND '2019-03-31'
  AND dispatching_base_num IN ('B00987', 'B02279', 'B02060');


SELECT count(*) FROM `taxi-rides-ny.nytaxi.fhv_partitioned_tripdata`
WHERE DATE(dropoff_datetime) BETWEEN '2019-01-01' AND '2019-03-31'
  AND dispatching_base_num IN ('B00987', 'B02279', 'B02060');