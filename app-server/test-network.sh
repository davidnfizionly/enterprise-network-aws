#!/bin/bash
# Test network connectivity to App Server

APP_PRIVATE_IP="10.0.3.219"

echo "🔹 Testing connectivity to App Server ($APP_PRIVATE_IP)..."
ping -c 4 $APP_PRIVATE_IP
