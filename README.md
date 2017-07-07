# TmxSql
TmxSql enables localization engineers to create a Centralized TM Repository from TMX files that they can query using SQL.

Getting Started:
Use Git to pull down a clone of the the TmxSql.  Here is a quick tutorial. You will need the following files:

- tmxdb.sqlite: Sqlite Database (an empty one will work - a sample is included)
- sql2tmx.py: Python script to import your tmx files.
- enfr_test.tmx: Sample TMX file
- sqlite-manager: FireFox plug in manage sqlite databases right in your browser

Import your TMX Files:
Type the following command to import your files into sqlite:
> sql2tmx.py enfr_test.tmx

Connect to the Sqlite Database:

1. Add the Sqlite Manager Plugin to FireFox 
2. Connect to the database file 'tmxdb.sqlite'

Query the TM Repostiory:

From there you can use sql to query and update your translation memories.  Here is an example:

SELECT * FROM TranslationUnits

Some useful queries are provided in 'tmx2sql_useful_queries.sql

Week 3 Report
- Attempted to collaborate with the Olifant project on Bitbucket 
- Reviewed TmxSql project with instructor and got approval
- Reached out to Gert Van Assche of Datamundi, who's SQL work on TMX is the inspiration for this project.
