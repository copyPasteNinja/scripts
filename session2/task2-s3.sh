#!/bin/bash 

# Write a script that copies all .sh files in a directory by appending "-backup" to their names.
# And move them into /tmp folder
# Use a for loop to go through each .sh file and copy and move them.

## PSEUDO CODE 

# FOR FILE IN *.SH DO 
#    COPY FILE SOURCE DESTINATION_backups
# DONE 

for file in *.sh; do 
    echo "Targeted Script: $file"
    cp $file-backups /tmp/$file-backups
    sleep 3
done