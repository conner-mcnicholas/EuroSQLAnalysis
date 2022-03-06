# EuroSQLAnalysis
Advanced SQL Mini Project

Initial state is scripts and data dir with csv files from https://drive.google.com/file/d/1gbSU9bjpler1y5lHo6koVa5YSI1J2MRk/view?usp=sharing

Inital Setup
1. Running ./create_table_list.sh creates list of tables in tablenames.txt to be used in downstream scripts.
2. Running ./build_all_tables.sh executes python script data/build_create_table_statement.py using the csv filenames to create script build_all_tables.sql.
3. Running ./remove_col_headers.sh creates copies of csv files in data/justdata that lack column headers, which would break their import.
4. Running ./fix_match_goals.sh cleans the corrupted goal data (1 goal - Jan, 2 - Feb, etc).  
5. Running fix_uFEFF_col_char.sh  removes the unicode 'ZERO WIDTH NO-BREAK SPACE' char that precedes all of the primary key id columns, thus making querying incredibly cumbersome.  
6. Also manually edited match_mass.csv using find/replace in text editor
to add extra 0's in the venue_id and referee_id columns, as they were chronically missing values and unable to left join on those ids.

Populating MySQL database:
7. The file build_all_tables.sql is imported into euro_cup_2016 database within phpMyAdmin mySQL UI (creates tables based on all csv files in data dir).
8. The csv files in data/justdata are imported into each individual table. All columns are created as varchar(N) where N is the max number of chars in each column of the table's csv file.
9. This database is then ready to query.  Image of this database was exported from phpMyAdmin to create euro_cup_2016.sql.  

## Solutions for each question can be found in question_solutions directory.
