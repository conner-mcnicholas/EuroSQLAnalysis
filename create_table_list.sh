#!/bin/bash
ls data/*.csv > tablenames.txt
sed -i s/'.csv'//g tablenames.txt
sed -i s/'data\/'//g tablenames.txt
