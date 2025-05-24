#!/bin/bash 

## Step 1 

test=$(systemctl status httpd)
if [ $? -ne 0 ]; then
    dnf install httpd -y
fi


## Step 2
systemctl start httpd
systemctl enable httpd

status=$(systemctl status httpd | head -n 3 | tail -n 1 | awk -F " " '{ print $2 }')

if [ $status = "active" ]; then
    echo "Apache is Active - $(date)" > /var/www/html/apache_log.log
else
    echo "Apache is InActive = $(date)" > /var/www/html/apache_error.log
fi 

## Step 3 
cat <<HTML > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <style>
    body { font-family: monospace; background: #f0f0f0; padding: 1em; }
    pre { background: white; padding: 1em; border: 1px solid #ccc; }
  </style>
</head>
<body>
  <h2>Abdul's Apache Status</h2>
  <pre>
$status
  </pre>
</body>
</html>
HTML

systemctl restart httpd