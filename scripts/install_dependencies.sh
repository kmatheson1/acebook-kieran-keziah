#!/bin/bash

# Use full paths to ensure compatibility
NVM_DIR="$HOME/.nvm"
export NVM_DIR

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Use Node.js LTS version
nvm install 18
nvm use 18

# Navigate to your app directory
cd /var/acebook

# Install application dependencies
npm install

# Install pm2 globally
npm install -g pm2