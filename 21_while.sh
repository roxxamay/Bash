#!/bin/bash
#
count=0
num=10

while [[ $count -le $num ]]
do
  echo "Value of Count variable is $count"
  let count++
done
