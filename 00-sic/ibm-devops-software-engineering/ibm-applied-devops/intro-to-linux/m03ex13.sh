#!/usr/bin/bash
echo "Are you a student? y(yes) / n(no)" 
read response

if [ "$response" = "y" ] 
then 
        echo "Welcome to the Team!" 
elif [ "$response" = "n" ] 
then
        echo "It is never too late to become!" 
else
	echo "Try again!"
	./$0
fi
