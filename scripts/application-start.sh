#!/bin/bash

# Use full paths to ensure compatibility
NVM_DIR="$HOME/.nvm"
export NVM_DIR

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Navigate to your app directory
cd /var/acebook

# Start your application with pm2
sudo pm2 start app.js --name kk-acebook