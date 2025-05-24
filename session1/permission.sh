#!/bin/bash 

# touch $1 || read -p "enter file name: " file && touch $file 
# chmod 744 $1 || chmod 744 $file 

# touch $1 
# chmod +x $1 

# read -p "enter file name: " file 
# chmod +x $file

chmod +x $1 || read -p "enter file name" file && chmod +x $file
