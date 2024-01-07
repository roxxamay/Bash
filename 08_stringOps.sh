#!/bin/bash
#
myVar="hey Buddy , how are you"

myVarLength=${#myVar}

echo "Length of the myVar is $myVarLength"

#upper case 
echo "upper case is >>> ${myVar^^}"
#lower case
echo "lower case is >>> ${myVar,,}"

#to replace a string in a variable
#
newVar=${myVar/Buddy/Friend}
echo "New Variable is $newVar"

#to slice a string
#print Buddy
echo "After slice >>> ${myVar:4:5}"

