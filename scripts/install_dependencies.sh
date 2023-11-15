#!/bin/bash

# Install NVM
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Set up NVM environment variables
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node.js (version 18) and check for npm
nvm install 18
nvm use 18

# Check if npm is installed
if command -v npm &> /dev/null; then
    echo "npm is installed."
else
    echo "npm is not installed. Something went wrong."
    exit 1
fi

# Navigate to your app directory
cd /var/acebook

# Install application dependencies
npm install

# Install pm2 globally
npm install -g pm2