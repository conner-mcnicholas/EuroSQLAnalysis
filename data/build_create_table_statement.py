"""
Reads a CSV file and generate an SQL statement to create table with VARCHAR
column types of the max length required
"""

import csv, os, sys

datafile = sys.argv[1]
tblname = os.path.basename(datafile).split('.')[0]
outfile = tblname + '.sql'

# Create list of column [names],[widths]
reader = csv.reader(open(datafile),delimiter = ',')
row = next(reader)
nc = len(row)
cols = []
for col in row:
	cols.append([col,1])

# Determine max width of each column in each row
rc = 0
for row in reader:
	rc = rc + 1
	if len(row) == nc:
		for i in range(len(row)):
			fld = str.strip(row[i])
			if len(fld) > cols[i][1]:
				cols[i][1] = len(fld)

# Build SQL statement
sql = 'CREATE TABLE euro_cup_2016.%s\n(' % (tblname)
for col in cols:
	sql = sql + ('\n\t%s VARCHAR(%s) NULL,' % (col[0],col[1]))
sql = sql[:len(sql)-1] + '\n);'
print('SQL statement created: \n',sql)

# Write file with SQL statement
sqlfile = open(outfile,'w')
sqlfile.write(sql)
sqlfile.close
print('%s created.' % (outfile))
