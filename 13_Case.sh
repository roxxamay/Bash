#!/bin/bash
#
echo "a = to see the current date"
echo "b = list all the filesin the current dir"
echo "c to check the current location in directary"
read -p "choose an option : " choice

case $choice in
  a) date;;
  b) ls;;
  c) pwd;;
  *) echo "not a valid option"
esac
