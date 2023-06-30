SELECT
    c.company_name,
    COUNT(t.trip_id) as trips_amount
FROM
    cabs c
    INNER JOIN trips t ON t.cab_id = c.cab_id
WHERE
    CAST(t.start_ts AS date) > '2017-11-14'
    AND CAST(t.start_ts AS date) < '2017-11-17'
GROUP BY
    c.company_name
ORDER BY
    trips_amount DESC;


SELECT
    c.company_name,
    COUNT(t.trip_id) as trips_amount
FROM
    cabs c
    INNER JOIN trips t ON t.cab_id = c.cab_id
WHERE
    c.company_name LIKE '%Yellow%'
    AND CAST(t.start_ts AS date) > '2017-10-31'
    AND CAST(t.start_ts AS date) < '2017-11-08'
GROUP BY
    c.company_name
UNION
SELECT
    ca.company_name,
    COUNT(tr.trip_id) as trips_amount
FROM
    cabs ca
    INNER JOIN trips tr ON tr.cab_id = ca.cab_id
WHERE
    ca.company_name LIKE '%Blue%'
    AND CAST(tr.start_ts AS date) > '2017-10-31'
    AND CAST(tr.start_ts AS date) < '2017-11-08'
GROUP BY
    ca.company_name
ORDER BY
    trips_amount DESC;


SELECT
    CASE 
        WHEN c.company_name = 'Flash Cab' THEN 'Flash Cab' 
        WHEN c.company_name = 'Taxi Affiliation Services' THEN 'Taxi Affiliation Services' 
        ELSE 'Other' 
    END AS company,
    COUNT(t.trip_id) as trips_amount
FROM
    cabs c
    INNER JOIN trips t ON t.cab_id = c.cab_id
WHERE
    CAST(t.start_ts AS date) > '2017-10-31'
    AND CAST(t.start_ts AS date) < '2017-11-08'
GROUP BY
    company
ORDER BY
    trips_amount DESC;


SELECT
    neighborhood_id,
    name
FROM
    neighborhoods
WHERE
    name LIKE 'O%Hare'
UNION
SELECT
    neighborhood_id,
    name
FROM
    neighborhoods
WHERE
    name = 'Loop';

SELECT
    ts,
    CASE 
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad' 
        ELSE 'Good' 
    END AS weather_conditions
FROM weather_records;

SELECT
    start_ts,
    t.weather_conditions,
    duration_seconds
FROM
    trips
INNER JOIN 
    (SELECT
        ts,
        CASE
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
        END AS weather_conditions
    FROM
        weather_records
    ) t on t.ts = trips.start_ts
    
WHERE
    pickup_location_id = 50 and dropoff_location_id = 63 AND EXTRACT (DOW FROM trips.start_ts) = 6
ORDER BY
    trip_id;