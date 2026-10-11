#!/bin/bash
echo "-----Let's calculate!-----"
echo -n "Choose the first number: "
read n1
echo -n "Choose the second number: "
read n2

#sum
sum=$(($n1+$n2))
echo "The sum is: $(($n1 + $n2))" #possibilidade de realizar a conta direto no echo

product=$(($n1*$n2))
echo "The product is: $product"

# possilibidade de realizar operations com o -gt -le -eq junto de [] ou [[]] que e mais recomendado
if [[ $sum -gt $product ]]
then
	echo "The sum is greater!"
elif (($sum < $product)) # usando o contrutor matematico (())
then
	echo "The product is greater!"
else
	echo "The sum is equal to the product!"
fi

echo "----That's all folks!----"
