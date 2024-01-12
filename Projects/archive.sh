#!/bin/bash
#
#$Revision:001
#
#$2024-01-12 20:36

#variables
#
BASE=/home/roxxamay/Desktop/Bash/Projects/test/
DAYS=10
DEPTH=1
RUN=0

#CHECK IF THE DIRECTORY IS PRESENT OR NOT
#
if [[ ! -d $BASE ]]
then
  echo "directory does not exits : $BASE"
  exit 1
fi

#creating archive folder if not present
#
if [[ ! -d $BASE/archive ]]
then
  mkdir $BASE/archive
fi

#find the list of the files larger than 20MB
#

for i in $(find $BASE -maxdepth $DEPTH -type f -size +20M)
do
  if [ $RUN -eq 0 ]
  then
    echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
    gzip $i || exit 1
    mv $i.gz $BASE/archive || exit 1
  fi
done
