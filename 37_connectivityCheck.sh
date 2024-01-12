#/bin/bash
#
read -p "which site you want to check : " site

ping -c 1 $site &> /dev/null


if [[ $status -eq 0 ]]        # altier $status is the advance option
then
  echo "successfullyy connected to $site"
else
  echo "unable to connect $site "

fi

