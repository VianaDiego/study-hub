#!/bin/bash

echo "Veryfing if the file already exists..."

if [ ! -f arrays_table.csv ]
then
	echo "Not found! Trying to download."
	bash ex32.sh
else
	echo "The file already exists!"
fi


dados_csv=$(cat arrays_table.csv)

column_0=$(cut -d "," -f1 arrays_table.csv)
column_1=$(cut -d "," -f2 arrays_table.csv)
column_2=$(cut -d "," -f3 arrays_table.csv)

echo "${column_0[@]}"
