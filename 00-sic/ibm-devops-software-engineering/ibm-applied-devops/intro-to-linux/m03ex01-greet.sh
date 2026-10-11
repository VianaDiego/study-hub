#! /usr/bin/bash

# Inciando (again and again and again)

# '-e' faz com que o interpretador aceite caracteres especiais como: '\n'
echo -e "Comme appellez vous? "

read nome

echo "Bienvenue, $nome!"

# '-n' obriga imprimir o 'echo' na mesma linha
echo -n "Congrats!! You just created and ran your (almost) first shell script "
echo "using Bash!"
