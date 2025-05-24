#!/bin/bash 

HOME_DIR="/users"
mkdir $HOME_DIR || echo "It exists"

echo "Script $0 has process ID of: $$"

read -p "Enter username: " username
read -p "Enter UID for user $username: " uid
read -p "Enter primary group for $username: " group

useradd -u $uid  -d $HOME_DIR -g $group $username || echo "failed to create user $username -- try again"