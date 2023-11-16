#!/bin/bash

# Specify the Node.js version (replace with your desired version)
NODE_VERSION="18"

# Set the PATH to include the bin directory of the Node.js version
export PATH="/usr/bin:$PATH"

# Navigate to your app directory
cd /var/acebook

# Start your application with pm2
pm2 start npm --name kk-acebook -- start