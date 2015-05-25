/* 1 */

SELECT
  LOWER(title) as title,
  sum(views) as views
FROM
  [bigquery-samples:wikimedia_pageviews.201207]

GROUP EACH BY title
ORDER BY views DESC
LIMIT 100;

/* 2 */
SELECT
  LOWER(title) as title,
  sum(views) as views
FROM
  [bigquery-samples:wikimedia_pageviews.201207]

WHERE
  views > 10000
GROUP EACH BY title
ORDER BY views ASC
LIMIT 100;

/* 3 */
SELECT
  LOWER(title) as title,
  sum(views) as views
FROM
  [bigquery-samples:wikimedia_pageviews.201207]

WHERE
  views > 10000 AND
  NOT title CONTAINS ':' AND
  LENGTH(title) > 2

GROUP EACH BY title
ORDER BY views DESC
LIMIT 100;

/* 4 */
SELECT
  LOWER(title) as title,
  sum(views) as views
FROM
  [bigquery-samples:wikimedia_pageviews.201207]

WHERE
  views > 100 AND
  NOT title CONTAINS ':' AND
  REGEXP_MATCH(title, r'^a\w{4,}$')

GROUP EACH BY title
ORDER BY views DESC
LIMIT 100;

/* 5 */
SELECT
  LOWER(title) as title,
  sum(views) as views
FROM
  [bigquery-samples:wikimedia_pageviews.201201],
  [bigquery-samples:wikimedia_pageviews.201202],
  [bigquery-samples:wikimedia_pageviews.201203],
  [bigquery-samples:wikimedia_pageviews.201204],
  [bigquery-samples:wikimedia_pageviews.201205],
  [bigquery-samples:wikimedia_pageviews.201206],
  [bigquery-samples:wikimedia_pageviews.201207]
WHERE
  NOT title CONTAINS ':'
  AND NOT title='undefined'
  AND wikimedia_project='wp'
  AND language='no'
  AND NOT REGEXP_MATCH(title, r'^cache.+')
GROUP EACH BY title
ORDER BY views DESC
LIMIT 100;
