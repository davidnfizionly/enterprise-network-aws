#!/bin/bash
# Connect to DB Server via App Server (ProxyCommand)
BASTION_PUBLIC_IP="54.81.229.159"
APP_PRIVATE_IP="10.0.3.219"
DB_PRIVATE_IP="172.31.0.112"
KEY_PATH="bastion-key-v2.pem"

ssh -i $KEY_PATH \
  -o ProxyCommand="ssh -i $KEY_PATH -W %h:%p ec2-user@$BASTION_PUBLIC_IP" \
  -o ProxyCommand="ssh -i $KEY_PATH -W $DB_PRIVATE_IP:22 ec2-user@$APP_PRIVATE_IP" \
  ec2-user@$DB_PRIVATE_IP
