#!/bin/bash

# Maths calculations
x=10
y=20

# Using let
let mul=$x*$y
echo multiplication: $mul

let sum=5+10
echo sum: $sum


# Using $((expression))
echo subtract: $(($x-$y))