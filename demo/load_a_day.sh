#!/bin/sh
set -x
exec time bq load --schema ./milano_schema.json --skip_leading_rows 1 --field_delimiter , --source_format CSV $@
