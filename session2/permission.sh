#!/bin/bash 

# touch $1 || read -p "enter file name: " file && touch $file 
# chmod 744 $1 || chmod 744 $file 

# touch $1 
# chmod +x $1 

# read -p "enter file name: " file 
# chmod +x $file

# chmod +x $1 || read -p "enter file name" file && chmod +x $file

file=$1 

if [ -z $file ]; then
    echo "Invalid argument, please provide file name"
    echo "USAGE: $0 [FILE_NAME]"
    exit
fi

if [ -f $file ]; then 
    chmod 744 $file
else
    touch $file
    echo '#!/bin/bash' > $file
    chmod 744 $file
fi 
