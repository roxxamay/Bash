#!/bin/bash

myArray=( 1 20 30.5 hello "hello buddy !")

#how to find no of the values in a array

#add # before name of the array to get the length of the array


echo "No. of the values , length of an array is ${#myArray[*]}"

echo "values from 2-3 index ${myArray[*]:2:2}"

#updating our array with new values

myArray+=( new 30 50.5 "hey aadi")

echo "values updated array are ${myArray[*]}"
