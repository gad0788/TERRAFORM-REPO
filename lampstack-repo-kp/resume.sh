#!/bin/bash

sudo yum update -y
sudo yum install git httpd wget unzip -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Uncomment the following lines if you want to create a group and user
# sudo groupadd DevOps
# sudo useradd Serge

# Download and unzip the GitHub repository
wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip
unzip main.zip

# Copy the files to the web server's root directory
sudo cp -r static-resume-main/* /var/www/html/

# Clean up the zip file
rm -rf static-resume-main main.zip

# Exit the script successfully
exit 0
