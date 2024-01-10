#!/bin/bash
#
#to read content from file
#
while read myVar
do 
  echo "Value from file is $myVar"

done < names.txt 
