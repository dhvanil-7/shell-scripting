#!/bin/bash

# To find filename from a path
filename=$(basename "\shell-scripting\11_file_system.sh")
echo Filename: $filename

# To find directory path from a path
dir_path=$(dirname "\abc\shell-scripting\11_file_system.sh")
echo Directory path: $dir_path

# To find directory path from a path
real_path=$(realpath "11_file_system.sh")
echo Real path of file: $real_path

# To list files
all_files=$(ls)
echo files available at current path: $all_files

# To get present working directory
current_dir_path=$(pwd)
echo Current directory path: $current_dir_path