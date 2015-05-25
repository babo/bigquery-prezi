#!/bin/sh

# Downloaded from here
open 'https://dandelion.eu/datagems/SpazioDati/telecom-sms-call-internet-mi/resource/'

# Compress is with gzip, BigQuery Storage loves it
ls -hl data
time gzip -k data/sms-call-internet-mi-2013-12-23.csv
ls -hl data

# Use Google Cloud SDK
if ! [ -x bq ]; then
    PATH="/Users/babo/nc/google-cloud-sdk/bin:${PATH}"
    export PATH
fi

# list storage
gsutil ls gs://milano_grid/

# upload it with a new name
gsutil mb -l eu gs://milano_grid
time gsutil -m cp data/sms-call-internet-mi-2013-12-23.csv.gz gs://milano_grid/2013-12-23.csv.gz

# import it into BigQuery
gsutil ls gs://milano_grid/
head data/sms-call-internet-mi-2013-12-23.csv

bq load --field_delimiter ',' --schema ./schema.json --skip_leading_rows 1  \
    milano.12_23 \
    gs://milano_grid/2013-12-23.csv.gz
