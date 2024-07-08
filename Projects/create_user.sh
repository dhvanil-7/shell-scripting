#!/bin/bash
#$Revision:001$
#$ Mon, Jul  8, 2024  1:07:04 AM

# Check if user is root
if [ $(echo $UID) -ne 0 ]
then
    echo "You do not have permissions."
    exit 1
fi

# Check if arguments are provided
if [ $# -eq 0 ]
then
    echo "Please provide user details as arguments"
    echo "Usage: ${0} USER_NAME [COMMENT] ..."
    exit 1
fi

# Arguments
USER_NAME=$1
shift
COMMENT="${@}"

# Create a password
PASS=$(date +%s%N)
echo $PASS

# Create a user
useradd -c "${COMMENT}" -m $USER_NAME

#Create a password
echo $PASS | passwd --stdin $USER_NAME

echo "Username: $USER_NAME"
echo "Password: $PASS"