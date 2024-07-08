#!/bin/bash

# Declare a function
function greetings {
    echo "Hello World"
}
greetings


# Declare a function with arguments
function greetings {
    echo "Number of arguments: $#"
    echo "Display all arguments: $@"
    echo "Hello $1"
    echo "Age: $2"
}
greetings abc 22