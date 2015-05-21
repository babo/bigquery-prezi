class: left, middle

# Overview

- fully managed
- blazingly fast
- a big data analytics engine
- with ~SQL interface
- petabyte scale
- analytics as a service
- BigQuery, your guess was correct

---
# Goal

- give you a hands on experience about BigQuery
- live demo
- a practical introduction
- enough information a burning desire to try it at home
- to share it with your colleagaues and like minded friends
- this presentation is shared with you
- try it at home!


.right[https://these_slides.to.download]
---
# Nordcloud

- experts in migration, automation and management of modern cloud infrastructure
- provide advisory, consulting, training and 24/7 operation duty for cloud computing services
- over two hundred customers in a wide range of industry sectors
- headquartered in Helsinki the company is growing rapidly, in the nordics and beyond
- I'm here to represent the Norwegian branch of Nordcloud
- attila.babo@nordcloud.com

### Please raise your hand

- heard of BigQuery
- using analytics
- SQL for analytics
- BigQuery for analytics

.right[https://these_slides.to.download]

---
# Demo with a public dataset to show the speed
- 1m rows
- cache off
- 1m rows
- 100m rows
- 10000m rows
---
# How to start?
- use your private gmail with the 300USD for two month credit
- add billing, this is required but doesn't cost you within the credit
- prefect way to safely experiment and get a feeling about the service
    - including the cost
## Dataflow
- use a "small" CSV file from a public dataset
    - from my machine, using command line, explain while compress
    - start it, but have an uploaded copy to rescue
- explain the data flow: mac -> storage -> BQ table
- explain the content, data types
- create the table, if it arrived use it or the present copy
- .. this takes a while so we move on
---
# Does BigQuery matters to me?

- I don't have petabyte scale problems
- my current solution is fine
- I've checked it a few years back but it's too limited and pricey

---
# Background
- SQL is great
- indexes are great
- tables scans are daunting
- scaling horizontaly is the way at webscale problems
- started early at google by internal need
    - fast
    - scaleable
    - ad-hoc analytics
    - not just for your data scientist
- vastly improved
---
# current state
- available for the general public
- API with JSON data, sounds familiar?
- constantly improving
- flexible, multiple input sources
- joined and shared datasets
- web console, connectors to R, Pandas, Hadoop, ODBC
- streaming injection, data is available immediately
- using a slice of a giant cluster of machines with guaranties rather than having a medium sized cluster

### a competitive advantage
---
# Price
- price model
- current figures in NOK
---
# demo of the small dataset
- use webui
- move on from numbers, use an ipython notebook with Julia as backend with gadfly
---

# Introduction
