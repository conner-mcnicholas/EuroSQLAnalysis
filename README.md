# EuroSQLAnalysis
Advanced SQL Mini Project

1. Running ./build_all_tables.sh creates build_all_tables.sql

2. The file build_all_tables.sql is imported into euro_cup_2016 database within phpMyAdmin mySQL UI (creates tables based on all csv files in data dir)

3. The csv files in data/justdata (which lack column headers), can be imported into each individual table.

4. All columns are created as varchar(N) where N is the max number of chars in each column of the table's csv file.
