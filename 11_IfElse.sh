#!/bin/bash

read -p "Enter your obtained marks : " marks

#-gt means greater than
if [[ $marks -gt 40 ]]
then
  echo "you are passed"
else
  echo "you are failed!!!!!!"

fi
