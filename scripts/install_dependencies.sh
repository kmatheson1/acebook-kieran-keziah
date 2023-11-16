#!/bin/bash

source /home/ec2-user/.bash_profile

if [ ! -d "/var/acebook" ]; then
    # If it doesn't exist, create it
    mkdir /var/acebook
fi

# sudo yum remove nodejs
curl -sL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
yum install -y nodejs
# Install pm2 globally
npm install pm2@latest -g

cd /var/acebook
npm install