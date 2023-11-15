#!/bin/bash

# Install Node.js and npm
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install -y nodejs npm

# Use full paths to ensure compatibility
NVM_DIR="$HOME/.nvm"
export NVM_DIR

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

cd /var/acebook
# Use Node.js LTS version
nvm install 18
nvm use 18

# Navigate to your app directory
cd /var/acebook

# Install application dependencies
npm install

# Install pm2 globally
npm install -g pm2