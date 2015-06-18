#!/usr/bin/env python
import math
from mako.template import Template

# latitude, longitude
C1 = (41.035109, -72.864569)
C = (40.733497, -74.096411)

def haversin(c1, c2):
    R = 6371000     # Radius of Earth in meters

    d_lat = math.radians(c2[0] - c1[0])
    d_lon = math.radians(c2[1] - c1[1])

    a = math.pow(math.sin(d_lat / 2), 2) + math.pow(math.sin(d_lon / 2), 2) * math.cos(math.radians(c1[0])) * math.cos(math.radians(c2[0]))
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    return c * R

BQ = """
SELECT
  ((10*(ABS(INTEGER(CEIL((dropoff_longitude - ${lon_min}) * 100)) % 15))) +
  ABS(INTEGER(CEIL((dropoff_latitude - ${lat_min}) * 100)) % 15)) as A,
  COUNT(*) as c

FROM
  [nyctaxi.data]
WHERE

  (pickup_longitude > ${lon_min}) AND
  (pickup_longitude < ${lon_max}) AND
  (pickup_latitude > ${lat_min}) AND
  (pickup_latitude < ${lat_max}) AND

  DAYOFWEEK (pickup_datetime) = 7 AND
  HOUR(pickup_datetime) = 1

GROUP BY A
ORDER BY A
LIMIT 100
"""

GRID=(2, 10)
print(Template(BQ).render(lat_min=C[0], lon_min=C[1], lat_max=C[0]+0.15*GRID[0], lon_max=C[1] + 0.15*GRID[1]))
