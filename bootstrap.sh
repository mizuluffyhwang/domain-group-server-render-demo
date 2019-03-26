#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<html><h1>Hello, Welcome To My EC2 hosted Webpage</h1></html>" > index.html
# aws s3 mb s3://YOURBUCKETNAMEHERE
# aws s3 cp index.html s3://YOURBUCKETNAMEHERE