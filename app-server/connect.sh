#!/bin/bash
# Connect to App Server through Bastion Host

# Replace with your Bastion Host Public IP
BASTION_PUBLIC_IP="54.81.229.159"

# Replace with your App Server Private IP
APP_PRIVATE_IP="10.0.3.219"

# Relative path to your PEM key (from app-server/ directory)
KEY_PATH="../bastion-key-v2.pem"

# Connect to App Server via Bastion Host using ProxyCommand
ssh -i $KEY_PATH \
  -o ProxyCommand="ssh -i $KEY_PATH -W %h:%p ec2-user@$BASTION_PUBLIC_IP" \
  ec2-user@$APP_PRIVATE_IP
