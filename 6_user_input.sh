#!/bin/bash

# \n moves cursor to next line. $ evaluates the string expression.
read -p $'What is your name? \n' name
echo Name: $name

# Approach 2: for moving cursor to next line
echo What is your age?
read age
echo Age: $age