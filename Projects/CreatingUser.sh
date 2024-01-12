#!/bin/bash
#
#script should be executed with sudo or root access
#
if [[ "${UID}" -ne 0 ]]
then
  echo "please run with sudo or root"
  exit 1
fi

#user should provide atleast one argument as username else guide him
#
if [[ "${#}" -lt 1 ]]
then
  echo "Usage : ${0} USER_NAME [COMMENT]....."
  echo "Create a use with name USER_NAME and comments field of COMMENT"
  exit
fi

#Store 1st argument as username
#
USER_NAME="${1}"

#in case of more than one argument ,store it as comments
#
shift
COMMENT="${@}"

#create a password 
#
PASSWORD=$(date +%d%N)

#create the user
useradd -c "${COMMENT}" -m $USER_NAME

#check if the user is successfully created or not
#
if [[ $? -ne 0 ]]
then
  echo "the Account is not created"
  exit 1
fi

#set the password for the user 
#
#echo $PASSWORD | passwd --stdin $USER_NAME
echo "${USER_NAME}:${PASSWORD}" | chpasswd

#check if the password is successfully set or not 
#
if [[ $? -ne 0 ]]
  then
    echo "password could not be set"
    exit 1
  else
    echo "password set successfully"
fi

#force password change on first login.
#
passwd -e $USER_NAME

#display the username , password and the host where the user was created 
#
echo
echo "Username : $USER_NAME"
echo
echo "Password : $PASSWORD"
echo
echo "$(hostname)"

