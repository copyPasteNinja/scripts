#!/bin/bash 


## TASK 
# Write a script that accepts a list of numbers from the user (space-separated).
# Use a for loop to iterate over each number and an if condition to check if it's even or odd.
# Print whether each number is even or odd.


## PSEUDO CODE 
# FOR NUM IN $@; DO 
#     IF REMAINDER OF NUM BY 2 IS 0; THEN ## EX: (($NUM % 2))
#         PRINT EVEN 
#     ELSE 
#         PRINT ODD
#     FI 
# DONE

for num in $@; do 
    if [ $((num % 2)) = "0" ]; then 
        echo even
    else 
        echo odd
    fi 
done