# Homework

Codes or commands to answer questions for homework

1. `docker run --help` ->      `--rm    Automatically remove the container when it exits`
2. 
Dockerfile:
```
FROM python:3.9
ENTRYPOINT [ "bash" ]
```

`docker build -t python:3.9 .`

`docker run -it python:3.9`

`pip list` -> `wheel      0.42.0`

3. 
```
SELECT count(*)
FROM public.green_taxi_data
WHERE date(lpep_pickup_datetime) = '2019-09-18' 
AND date(lpep_dropoff_datetime) = '2019-09-18'
```
4. 
```
SELECT date(lpep_pickup_datetime)
FROM public.green_taxi_data
WHERE trip_distance = (
	SELECT MAX(trip_distance)
	FROM public.green_taxi_data
)
```
5. 
```
SELECT z."Borough", SUM(gtd."total_amount") AS sum_total_amount
FROM public.green_taxi_data gtd
LEFT JOIN public.zones z ON gtd."PULocationID"=z."LocationID"
WHERE date(gtd."lpep_pickup_datetime") = '2019-09-18'
AND z."Borough" != 'Unknown'
GROUP BY z."Borough"
HAVING SUM(gtd."total_amount") > 50000
ORDER BY sum_total_amount

-- Need to join and create new Zone/Borough columns for each pickup and dropoff
```

6. 
```
-- For the passengers picked up in September 2019 in the zone name Astoria which was the drop off zone that had the largest tip? We want the name of the zone, not the id.

-- Note: it's not a typo, it's tip , not trip

--     Central Park
--     Jamaica
--     JFK Airport
--     Long Island City/Queens Plaza

WITH zone_and_tip AS (
	SELECT gtd.lpep_dropoff_datetime, z."Zone", gtd.tip_amount
	FROM public.green_taxi_data gtd
	LEFT JOIN public.zones z ON gtd."PULocationID"=z."LocationID"
	WHERE date(gtd."lpep_pickup_datetime") >= '2019-09-01'
	AND date(gtd."lpep_pickup_datetime") <= '2019-09-30'
	AND gtd."PULocationID" = (
		SELECT "LocationID"
		FROM public.zones z
		WHERE z."Zone" = 'Astoria')
)
SELECT *
FROM zone_and_tip

-- Need to join and create new Zone/Borough columns for each pickup and dropoff
```