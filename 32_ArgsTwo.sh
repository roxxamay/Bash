#!/bin/bash
#for loop to access the values from arguments
for filename in $@
do 
  echo "copying file - $filename"
done 
