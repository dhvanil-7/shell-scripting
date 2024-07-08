#!/bin/bash

echo What is your age?
read age

check_age=true


# How to use if-else statements
if [[ $age -gt 18 ]] && [[ $check_age -eq true ]]
then
    echo Congrats!!! You are allowed to vote.
elif [[ $age -eq 18 ]]
then
    echo Congrats !! You are now eligible to vote.
else
    echo Unfortunately, you are not allowed to vote.
fi


# Ternary operator
echo ""
echo "Ternary expression"
[[ $age -ge 18 ]] && echo "Age is more than 18." || echo "Minor"


# How to use case statements
echo ""
echo "Case statements"
echo "Please select a option"
echo "a = Current date"
echo "b = current directory"

read choice

case $choice in
    a) date;;
    b) pwd;;
    *)echo Not a valid input
esac

