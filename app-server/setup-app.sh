#!/bin/bash
# Setup basic services on App Server (Apache example)

echo "🔹 Updating system..."
sudo yum update -y

echo "🔹 Installing Apache..."
sudo yum install -y httpd

echo "🔹 Starting Apache..."
sudo systemctl start httpd
sudo systemctl enable httpd

echo "✅ App Server setup completed. Apache is running!"
