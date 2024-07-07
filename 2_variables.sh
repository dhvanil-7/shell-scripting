#!/bin/bash

# Variables are containers for storing data.

# declaring name variable with value Abc
name="Abc"
echo $name
echo "Hello, my name is '$name'"    # Utilize variable in String.

# Re-initialize name variable with value XYZ.
name="XYZ"
echo "Hello, my name is '$name'"

# Assign one variable to another variable 
new_name=$name
echo "New name: $new_name"

# Store command output to variable
directory=$(pwd)
echo "Current location: $directory"

# Make a constant variable using readonly
readonly constant=3.14
constant=3                          # Raises error constant: readonly variable
echo $constant
