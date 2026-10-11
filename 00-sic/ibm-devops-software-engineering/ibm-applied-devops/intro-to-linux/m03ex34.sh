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

# contanto a quantidade de linhas atraves do arq csv
num_linhas=$(cat arrays_table.csv | wc -l)


column_0=($(cut -d "," -f1 arrays_table.csv))
column_1=($(cut -d "," -f2 arrays_table.csv))
column_2=($(cut -d "," -f3 arrays_table.csv))

# contando a quantidade de itens do array
num_linhas_02=${#column_1[@]}

column_3="column_3"

for ((i=1; i<$num_linhas; i++)); do
  column_3[$i]=$((column_2[$i] - column_1[$i]))
done
echo "${column_3[@]}"
