#!/bin/bash
# Initial setup for DB Server
sudo yum update -y
sudo yum install -y mysql-server
sudo systemctl start mysqld
echo "DB Server initialized!"
