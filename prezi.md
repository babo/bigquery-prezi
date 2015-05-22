# Overview

- an analytics engine
- for big data
- runs SQL queries
- fast
    - it doesn't matter what size of data
    - what type of queries you do
- easy to use
- no administration or provisioning
---
# BigQuery
???
your guess were correct
- I'm here to represent the Norwegian office of Nordcloud
- attila.babo@nordcloud.com
---
# Goal

- practical introduction
- live demos
- hands-on experience using BigQuery
- enough information and a burning desire to try it at home
- to share it with your colleagues and like minded friends
- this presentation is shared with you
- try it at home!

.footnote[http://hive.gl/BRQYQ]

???
# Please raise your hand

- heard of BigQuery
- using analytics
    - SQL for analytics
    - BigQuery for analytics
---
# Does BigQuery matters to me?

- I don't have petabyte scale problems
- my current solution is fine
- I've checked it a few years back but it was too limited and pricey
- I'm not feeling safe to use it
???
I understand your concerns, please bear with us!
---
# Demo to give an impression
- 1m rows
- cache off
- 1m rows
- 100m rows
- show a mission impossible: effective regular expression in queries
---
## How to get my data in?

- anywhere -> Google Cloud Storage -> BiqQuery table
???
- all these demos were against a public dataset
- to demo it with real data
- use a "small" CSV file from a public dataset
    - from my machine, using command line, explain while compress
    - start it, but have an uploaded copy to rescue
- explain the data flow: mac -> storage -> BQ table
- explain the content, data types
- create the table, if it arrived use it or the present copy
- .. this takes a while so we move on
---
# Background
- SQL is great
- indexes are great
- but
- tables scans are daunting
- scaling up solutions are limited
---
# Solution
- scale out!
- started at Google by internal need
    - fast
    - scaleable
    - managed
    - ad-hoc analytics
    - not just for your data scientist
- analytics as a service
???
- limit could be memory size, disk space, available IO capacity or "just" money
---
# Current state
- vastly improved
- available for the general public
- affordable
- API with JSON data
- with open interfaces
    - REST, WebUI, ODBC
- flexible, multiple input sources
    - streaming injection, data is available immediately
- data output
    - easy data management with ACL (Access control list)
    - joined and shared datasets
- highly parallelized, compressed, replicated storage
???
- started as an internal only product, one of the secret sauce of google's success
- fully managed
- data is stored safely
- single namespace, join table from anywhere
---
.footnote[Use it, it's a competitive advantage!]
.Aligner-item[###Get a slice of a giant cluster of machines with guaranties rather than having a medium sized cluster]

.right[*Jordan Tigani*]
---
# How it works
- disk speed as bottleneck
- show a diagram of BQ
- column oriented storage
    - compressible, show it!
    - read multiple copies in parallel
- SQL is cheap to parallelize but aggregation is complex
    - distinct values are tricky
    - joins with large datasets are tricky
    - it's feels like SQL, seems like SQL
        - many advantages
        - but it's different
        - some things are harder, examples above
---
# Demo of a small dataset
???
- use webui
- move on from numbers, use an ipython notebook with Julia as backend with gadfly
---
# Technical highlights
- fast, atomic imports
    - Cloud Storage
    - Hadoop
    - Google Cloud DataFlow
    - ODBC
- streaming injection API (100k rows/second per table)
- ETL (Extract, Transform, Load) operations inside BigQuery
    - deduplication
- exports
    - Hadoop
- a rich SQL language
    - extends with nested and repeated fields
    - JSON queries
    - raw JSON fields
    - JSON path type queries
    - IP address parsing
    - regular expressions
- web console, connectors for R, iPython, Pandas, Excel
???
- these are expensive in a normal relational database that has indices
- large, multi-tenant (shared) computer cluster
---
# Pricing
- loading data into BigQuery is free
- streaming data into BigQuery
    - 2.6 GB data for 1 NOK *from August 12, 2015*
- storing data
    - 1 GB of data is 0.15NOK per month
- exporting data
    - free

# Query Pricing
- 37.65 NOK for 1TB of total data processed
.footnote[$1 is 7.53NOK]
???
- based on total data processed
    - charged according to the total data processed in the columns you select
    - the total data per column is calculated based on the types of data in the colum
- streaming is row based
- the first 1 TB of data processed per month is free
- queries that return an error, or for cached queries

- stream $0.01 per 200 MB, 1 KB minimum size
- storage 2 cent
- query $5
---
# Demo with a large dataset
- NYC taxi rides from 2010-2013
- 120GB of uncompressed data
???
- data fields, geolocation
- how to move that in?
- simple queries
- there are errors inside!
- find errors
- eliminate them
- complex queries with output on the map
---
# How to start with BiqQuery?
- use your private gmail, there is a campaign
    - 300 USD for two month credit
- add billing, this is required but doesn't cost you within the credit
- prefect way to safely experiment and get a feeling about the service
    - including the cost

# How to continue?
- Nordcloud is here to help
- advisory, consulting and 24/7 operation duty
- Google's only premium consulting partner in the Nordics
---
class: middle
![](http://cdn2.hubspot.net/hub/453090/file-2126415513-jpg/nordcloud-logo-main-380x80.jpg)

#I look forward to hearing from you
.right[*attila.babo@nordcloud.com*]
.footnote[http://hive.gl/BRQYQ]
???
# try it at home!
- this presentation is shared with you
- try it at home!
- buy Google Cloud services through Nordcloud
- we invoice it in NOK
---
# ![](http://cdn2.hubspot.net/hub/453090/file-2126415513-jpg/nordcloud-logo-main-380x80.jpg)

- experts in migration, automation and management of modern cloud infrastructure
- provide advisory, consulting, training and 24/7 operation duty for cloud computing services
- over two hundred projects in a wide range of industry sectors
- headquartered in Helsinki the company is growing rapidly, in the nordics and beyond
