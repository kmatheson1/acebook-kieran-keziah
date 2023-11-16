#!/bin/bash

export PATH=~/.npm-global/bin:$PATH

# Navigate to your app directory
cd /var/acebook

# Start your application with pm2
pm2 start app.js --name kk-acebook