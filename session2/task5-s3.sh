#!/bin/bash 


## TASK 
# Write a script that asks the user to enter a file name.
# Use if statements to:
# Check if the file exists.
# If it exists, check if the file is readable and writable.
# Print appropriate messages depending on whether the file exists or has the required permissions.

# # PSEUDO CODE 
# 1. READ -P ASK USER FOR FILE NAME & SET VAR 
# 2. Initiate FOR LOOP iterating through all files in the currend directry
#   a. IF  $INPUT_VAR = "FILE":
#       1. IF FILE IS READABLE && WRITIBLE:
#               PRINT $FILE IS READBLE AND WRITING
#               EXIT
#          ELSE:
#               PRINT "FILE EXITS BUT WITHOUT PROPER PERMISSIONS"
#               EXIT
#          FI
#      ELSE:
#           PRINT "FILE DOES NOT EXIT" 
#      FI 
#      CLEAR THE SCREEN
# END FOR LOOP 

read -p "Enter file name you're looking for: " filename

for file in *; do 
    if [ $file = $filename ]; then 
        if [[ -wr $file ]]; then 
            echo "The file $filename has both readable & writable permissions"
            exit
        else
            echo "The file $filename exits but without readable & or writable permissions"
            exit
        fi 
    fi
done