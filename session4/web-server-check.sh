#!/bin/bash 

# The script should:
# 1. Use curl to check the response status of the web server (e.g., http://localhost).
# 2. If the server responds with an HTTP status code other than 200, 
# restart the web server using systemctl restart nginx or apache2.
# 3. Log all status checks and restarts to a file.

## PSEUDO CODE 
# 1. Set web server name as variable 
# 2. Use systemctl to check status of service
#    a. IF status is "active"; then 
#          PRINT "SERVER ACTIVE"
#          Write Server active - datetime stamp to apache_log.log
#     b. IF status is not active; then
#          PRINT "SERVER INACTIVE"
#          RESTART SERVER
#          Write Server inactive - datetime stamp to apache_log.log
    # c.  ELSE 
    #      PRINT "STATUS UNKNOWN"
    #      Write Server status unknown - datetime stamp to apache_log.log


SERVICE="httpd" 
status=$(systemctl status httpd | head -n 3 | tail -n 1 | awk -F " " '{print $2}')

if [ $status = "active" ]; then 
    echo "$SERVICE status ACTIVE"
    echo "$SERVICE status ACTIVE - $(date)" >> /var/www/html/apache_log.log
elif [ $status != "active" ]; then
    echo "$SERVICE status INACTIVE"
    systemctl restart $SERVICE
    echo "$SERVICE status INACTIVE - $(date)" >> /var/www/html/apache_log.log
fi 