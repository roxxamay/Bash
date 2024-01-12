#!/bin/bash
#for loop to access the values from arguments

if [[ $# -eq 0 ]]
then
  echo "please provide atleast one args"
  exit 1
fi

for filename in $@
do 
  echo "copying file - $filename"
done
