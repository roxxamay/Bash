#!/bin/bash
#
#
FreeSpace=$(free -mt | grep "Total" | awk '{print $4}')

TH=500

if [[ $FreeSpace -lt $TH ]]
then
  echo "Warning , RAM is running low"
else
  echo "Ram is sufficent - $FreeSpace M "
fi
