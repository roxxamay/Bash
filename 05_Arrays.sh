#/bin/bash

#Array
#definingan Array

myArray=( 1  20 30.5 hello "hey buddy" )

echo "value in 0 index is ${myArray[0]}"

echo "value in 1 index is ${myArray[1]}"

echo "value in 2 index is ${myArray[2]}"

echo "value in 3 index is ${myArray[3]}"

echo "value in 4 index is ${myArray[4]}"

#use * in [] to print all the value of the Array

echo "all the values at one place are ${myArray[*]}"

