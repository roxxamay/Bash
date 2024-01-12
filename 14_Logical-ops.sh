#!/bin/bash
#
#AND operators

read -p "What is our age : " age
read -p "Your country : " country
if [[ $age -ge 18 ]] && [[ $country == "India" || $country == "india" ]]
#use == to compare string value and -eq for numeric 
then
  echo "you can vote "
else
  echo "you cant vote"

fi
