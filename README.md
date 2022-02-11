# EuroSQLAnalysis
Advanced SQL Mini Project

Initial state is shell scripts and data dir with csv files from https://drive.google.com/file/d/1gbSU9bjpler1y5lHo6koVa5YSI1J2MRk/view?usp=sharing

1. Running ./create_table_list.sh creates list of tables/files tablenames.txt to be used in downstream scripts.
2. Running ./build_all_tables.sh creates build_all_tables.sql
3. The file build_all_tables.sql is imported into euro_cup_2016 database within phpMyAdmin mySQL UI (creates tables based on all csv files in data dir).
4. Running ./remove_col_headers.sh creates copies of csv files in data/justdata that lack column headers, which would break their import.
4. The csv files in data/justdata are imported into each individual table.
5. All columns are created as varchar(N) where N is the max number of chars in each column of the table's csv file.
