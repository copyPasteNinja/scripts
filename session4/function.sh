#!/bin/bash

name="Abdul"

## declare a function
_say_hello() {
    echo "Hello There 👋"
    echo "I am your friendly bot"
    echo "You can ask me anything"
    read -p "What is your name: " name   
}

## function to install packages
_install() {
    dnf install $1 -y > /dev/null
    if [ $? -ne 0 ]; then 
        echo "Failed to install $1"
    else 
        echo "Successfully installed $1"
    fi 
}

_test_variable() {
    echo "Testing a variable"
    local name="Abdul"
    age=24
}

# ./script.sh    >> creates new process to execute commands (test: echo $$)
# bash script.sh >> creates new process to execute commands (test: echo $$)

# source >>  
