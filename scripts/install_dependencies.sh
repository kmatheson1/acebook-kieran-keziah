#!/bin/bash

# Install Node.js LTS version using NodeSource
# sudo yum remove nodejs
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
yum install -y nodejs

# Check if npm is installed
if command -v npm &> /dev/null; then
    echo "npm is installed."
else
    echo "npm is not installed. Something went wrong."
    exit 1
fi

# Navigate to your app directory
cd /var/acebook

# # Change ownership of the directory
# chown -R ec2-user:ec2-user /var/acebook

# Install application dependencies
npm install

# Install pm2 globally
npm install -g pm2