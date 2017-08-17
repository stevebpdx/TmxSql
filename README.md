# TmxSql
TmxSql enables localization engineers to work with translation memories (TM) using SQL. You can create a Centralized TM Repository from TMX files that they can query using SQL. The TMX file format, Translation Memory Exchange, is a standard in XML format used to transfer translation data.

For more information on the TMX file format:  
https://en.wikipedia.org/wiki/Translation_Memory_eXchange  
https://www.gala-global.org/tmx-14b 

Getting Started:
Use Git to pull down a clone of TmxSql.  Here is a quick tutorial. You will need the following files:

- tmxdb.sqlite: Sqlite Database (an empty one will work - a sample is included)
- sql2tmx.py: Python script to import your tmx files.
- enfr_test.tmx: Sample TMX file
- sqlite-manager: FireFox plug in manage sqlite databases right in your browser

Import your TMX Files:
Type the following command to import your files into sqlite:
> sql2tmx.py enfr_test.tmx

Connect to the Sqlite Database:

1. Add the Sqlite Manager Plugin to FireFox 
1. Connect to the database file 'tmxdb.sqlite'

Query the TM Repostiory:

From there you can use sql to query and update your translation memories.  Here is an example:

SELECT * FROM TranslationUnits

Some useful queries are provided in 'tmx2sql_useful_queries.sql'

Note: 
This is my class project for a computer science course at Portland State University, CS 561: Open Source Software Development taught by Bart Massey.
https://github.com/psu-oss-2017/psu-oss-2017.github.io/wiki

Acknowledgements:
This project was inspired by Gert Van Asshe from Datamundi.  Gert has been doing work on TMX using SQL.  This project is a result of conversations with Gert.
https://www.linkedin.com/in/gertvanassche

## Status
Can be used to effectively manage bilingual TMX files using SQL queries.  Not ready yet to import TMX files with 3 or more languages.

### To Do: 
- Import: Allow import of TMX files with multiple target segments for each translation unit.
- Import: Define interfaces to abstract db layer and decouple Sqlite dependency.
- Import: argument: allow *.tmx on DOS
- Import: add optional argument: --dbname
- Import: add optional argument: --company 	Specify a company name
- Import: add optional argument: --domain		Specify a domain if known
- Import: Try catch for exceptions with db transactions
- Import: Break up code into smaller modules
- Testing: Create python unit tests, test on linux
- SQL: Move Source/Target language columns to column headers in views.
- SQL: Add <note> to property table - any other meta data?  Header?
- SQL: Performance: Indexes to improve performance, defrag existing db file
- SQL: More sql views
- SQL: Table or ini file of regexps to clean and dedupe data

