#!/bin/bash

# How to declare a key-value array
declare -A arr
arr=( [name]=Abc [age]=41 )

# How to access values
echo Name: ${arr[name]}
echo Age: ${arr[age]}

# How to update key-value
arr[name]=xyz
echo Name: ${arr[name]}

# How to access key names
echo Keys: ${!arr[*]}

# How to access values
echo Values: ${arr[*]}


# How to declare readonly array
declare -rA readonly_arr=( [name]=mno [age]=58)
readonly_arr=( [name]=John [age]=56 )               # Raises error for readonly
