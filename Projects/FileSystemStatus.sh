#!/bin/bash
#
#monitoring the free fs space disk
#

FU=$(df -h |egrep -v "Filesystem|tmpfs" | grep "sda1" | awk '{print $5}' | tr -d %)

if [[ $FU -ge 80 ]]
then
  echo "Warning , disk space is low "

else
  echo "All good"

fi

