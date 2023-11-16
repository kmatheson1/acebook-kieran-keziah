#!/bin/bash

source /home/ec2-user/.bash_profile

# sudo yum remove nodejs
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
sudo yum install -y nodejs

# Check if npm is installed
if command -v npm &> /dev/null; then
    echo "npm is installed."
else
    echo "npm is not installed. Something went wrong."
    exit 1
fi

# Install pm2 globally
npm install pm2@latest -g