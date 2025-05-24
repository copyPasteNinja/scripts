#!/bin/bash 

## syntax
# for item in list; do
#     # commands
# done

## Basic usage
# for file in *.sh; do
#     echo "This is a script: $file"
# done

## Single Line For Loop
# for i in *.sh; do  cat $item | grep '#!/bin/bash';  done

## Forloop with conditions
for user in $(cat users.txt); do
    if [[ $user == *kris* ]]; then
        echo "Kris has been found"
        exit
    fi
done



