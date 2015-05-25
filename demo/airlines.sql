/* Airport distance from Denver where United Airlines has departing flights */
SELECT
  name, city,
  departure_airport,
  departure_lat, departure_lon,
  ((ACOS(SIN(39.73756700 * PI() / 180) *
           SIN(departure_lat * PI() / 180) +
           COS(39.73756700 * PI() / 180) *
           COS(departure_lat * PI() / 180) *
           COS((-104.98471790 -
           departure_lon) * PI() / 180)) *
           180 / PI()) * 60 * 1.1515)
      AS distance
FROM [bigquery-samples:airline_ontime_data.flights] as flights
  JOIN [helpers.airports] AS helper
  ON
    departure_airport = helper.IATA_FAA
WHERE
  airline_code = '19977'
GROUP BY
  departure_airport, departure_lat, departure_lon, distance, name, city
ORDER BY
  distance ASC
LIMIT 1000
