#!/bin/bash

# Use full paths to ensure compatibility
NVM_DIR="$HOME/.nvm"
export NVM_DIR

# Install nvm
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Use Node.js LTS version
sudo nvm install 18
sudo nvm use 18

# Navigate to your app directory
cd /var/acebook

# Install application dependencies
sudo npm install

# Install pm2 globally
sudo npm install -g pm2