#!/bin/bash 

echo "Current script name: $0" 
echo "First given argument: $1"
echo "Second given argumetn: $2"

mkdir $1 
touch $1/$2
chmod 744 $1/$2

echo "Process ID: $$" 
echo "# of given arguments: $#"
echo "All given arguments $@"

