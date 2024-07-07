#!/bin/bash

greetings="Hello World !!!"
echo String: $greetings

# Find length of string value
echo String length: ${#greetings}

# Convert string to uppercase
echo Uppercase: ${greetings^^}

# Convert string to lowercase
echo Lowercase: ${greetings,,}

# Replace characters
echo Updated string: ${greetings/!/@}

# Slicing => string: start_pposition: number_of_characters
echo Sliced string: ${greetings:6:5}
echo All characters from 6th index: ${greetings:6}