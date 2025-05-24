#!/bin/bash 

# Appends the current date and time to a file called /var/www/html/logs.txt using >> (append redirection).
# Run the script multiple times to see the log grow with each run.

result=$(date)
echo "Current Date & Time: $result" >> /tmp/logs.txt

