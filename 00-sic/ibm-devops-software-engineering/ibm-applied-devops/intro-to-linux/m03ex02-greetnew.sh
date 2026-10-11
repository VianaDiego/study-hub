#! /usr/bin/bash

# (again and again and again)

# '-n' obriga imprimir o 'echo' na mesma linha
echo -n "Comme appellez vous? "
read firstN

echo -n "Quel est ton nom de famille? "
read lastN
echo "Bienvenue, $firstN $lastN!"

echo "Au revoir et bon courage!"