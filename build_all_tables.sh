#!/bin/bash
cd data
while read i
do
	python build_create_table_statement.py $i.csv
done < ../tablenames.txt
cat *.sql > build_all_tables.sql
mv build_all_tables.sql ..
rm *.sql
cd ..
