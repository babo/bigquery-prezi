/* Convert timestamp to hour */
SELECT
  HOUR(SEC_TO_TIMESTAMP(Time_interval / 1000)) as hour
FROM [milano.12_23]
LIMIT 1;

/* Calls by hour */
SELECT
  SUM(Call_out) as call_out,
  HOUR(SEC_TO_TIMESTAMP(Time_interval / 1000)) as hour,
FROM [milano.12_23]
GROUP BY
  hour
ORDER BY
  hour
LIMIT 24;

/* Calls by country */
SELECT
  SUM(Call_out) as call_out,
  Country_code
FROM [milano.12_23]
WHERE
  Call_out IS NOT NULL AND
  Country_code != 39 AND
  Country_code != 0
GROUP BY
  Country_code
ORDER BY
  call_out DESC
LIMIT 100;

/* Where are the Italians calling out the most */
SELECT
  Country_code,
  Square_id,
  INTEGER(SUM(Call_out)) as call,
FROM [milano.12_23]

WHERE
  Country_code = 39
GROUP BY
  Square_id, Country_code

ORDER BY
  call DESC


LIMIT 10;
