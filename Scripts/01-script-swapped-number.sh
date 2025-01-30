echo "Enter first number:"
read a
echo "Enter second number:"
read b
b=$((a+b))
a=$((b-a))
b=$((b-a))
echo"The swapped number are:"
echo $a
echo $b
