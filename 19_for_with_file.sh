#!/bin/bash
#
#getting value from file name.txt
#
FILE="/home/roxxamay/Desktop/Bash/names.txt"

for name in $(cat $FILE)
do 
  echo "Name is $name"
done
