#!/bin/bash
#

read -p "Enter your marks : " marks

if [[ $marks -ge 80 ]]
then
  echo "first Division"
elif [[ $marks -ge 60 ]]
then
  echo "Second divison"
else
  echo "fail"
fi
  
  
