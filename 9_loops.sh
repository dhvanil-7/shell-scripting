#!/bin/bash

# For loop approach-1
for num in 1 2 3 4 5
do 
    echo Number: $num
done

# For loop approach-2
echo ""
for num in {1..5}
do 
    echo Number: $num
done

# For loop approach-3
echo ""
for name in abc xyz
do 
    echo Name: $name
done

# For loop: get all files
echo ""
for file in $(ls)
do 
    echo Files: $file
done

# For loop: accessing all elements of array
echo ""
arr=( 1 2 hello )
for((i=0; i<${#arr[*]}; i++))
do 
    echo Array element at $i index: ${arr[$i]}
done

# While loop:accessing all elements of array
echo ""
i=0
length=${#arr[*]}
while [[ i -lt $length ]]
do
    echo while loop: array element at $i index: ${arr[$i]}
    let i++
done

# Until loop:accessing all elements of array
echo ""
i=0
length=${#arr[*]}
until [[ i -eq $length ]]           # Runs the loop until condition is met
do
    echo until loop: array element at $i index: ${arr[$i]}
    let i++
done