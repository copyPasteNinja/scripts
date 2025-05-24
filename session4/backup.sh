#!/bin/bash 

## Take a backup of our apache (website content)

## PSUEDO CODE
# 1. Archive /var/www/html folder under /backups with datetime stamp
# X - 2. List all backups that are older than 1 months & delete them
# 3. Setup cront to excute our script daily

tar -cvf /backups/apache-backup-$(date).tar /var/www/html


