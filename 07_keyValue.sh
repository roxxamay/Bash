#!/bin/bash
#
#how to store key values pairs

declare -A myArray

myArray=([name]=prashant [age]=28 [city]=gaya)

echo "name is ${myArray[name]}"
echo "age is ${myArray[age]}"
echo "city is ${myArray[city]}"


