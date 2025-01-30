#!/bin/bash

#Prompt the user to enter the first number
read -p "Enter the first number: " numl

# Prompt the user to enter the second number
read -p "Enter the second number: " num2

# Add the two numbers and store the result in a third variable
result=$(echo "$numl + $num2" bc)

# Print the result
echo "The sum of $numl and $num2 is: $result"
