#!/bin/bash

## Array definition ways
#1 Indirect Declaration

arr1[1]='Hello'
echo ${arr1[*]}
#2 Explicit Declaration

declare -a arr2 
echo ${arr2[@]}
#3 Compound Assignment

arr3=('car' 'cat' 'dog')
arr4=([0]='Hasan' [1]='Ali' [2]='Ahmed' [3]='Omar')
echo ${arr3[*]}
echo ${arr4[*]}

# Array Accessing
# access specific element
echo ${arr4[2]}
# access first element
echo ${arr4[0]}
echo ${arr4}
# access starting from specific index
echo ${arr4[@]:2}
# access elements in range from to 
echo ${arr4[@]:1:3}

# Count Length of array
echo ${#arr4[@]}

# Search for item in array
echo ${arr4[@]/*[A]*/}

# Replacing Substring Temporary
echo ${arr4[@]//a/A}		
echo ${arr4[@]}			
echo ${arr4[0]//n/R}	

# Delete index in array
unset arr3[1]
echo ${arr3[*]}

# Delete whole array
unset arr1
echo ${arr1[@]:0}


