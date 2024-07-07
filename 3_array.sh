#!/bin/bash

# List of space separated values
arr=( 1 2 3 5.5 hello)

# How to access array elements
echo $arr                                               # Access first value
echo Value at 3rd position: ${arr[2]}                   # access 3rd element
echo All elements: ${arr[*]}                            # Access all elements of array
echo Access 2 elements of array from 2nd positon: ${arr[*]:2:2}     # array[*]: start_position : number_of_elements
echo Access all elements of array from 2nd positon: ${arr[*]:2}     # array[*]: start_position


# How to find length of an array
echo Length of array: ${#arr[*]}                        # Length of array


# How to update array
arr+=( 10 20 30 )
echo Updated arr: ${arr[*]}
