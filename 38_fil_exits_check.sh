#!/bin/bash
#
#
read -p "enter the file name : " FILEPATH 
echo "================================================="
if [[ -f $FILEPATH ]]
then
  echo "$FILEPATH Exist in"
  realpath $FILEPATH
else
  echo "file not exist "
  exit 1
fi

