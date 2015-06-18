#!/bin/sh
set -x

DATA='gs://milano_grid/data/'
TABLE='milano.december'

gsutil ls ${DATA} | xargs -n 1 \
    bq load --schema ./milano_schema.json \
    --skip_leading_rows 1 \
    --field_delimiter '\t' \
    --source_format CSV \
    ${TABLE}
