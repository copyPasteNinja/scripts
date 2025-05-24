#!/bin/bash

## Task4-S3
# Write a script that starts from a user-provided number and counts down to 0.
# Use a while loop to print the numbers until the countdown finishes.
# After the countdown, display "Time's up!"

## PSEUDO CODE
# Take input from user and save that as num variable
# initiate while loop with condition if $num is greater than 0
# print out $num 
# subtract 1 by $num each iteration
# end while loop 
# print out "Time's up!"

read -p "Enter a number to start countdown: " num
while [ $num -ge 1 ]; do
    echo $num
    ((num--))
    sleep 1
done
echo "Times up!"