#!/bin/bash

# Navigate to your app directory
cd /var/acebook

sudo chown -R ec2-user:ec2-user /var/acebook/node_modules
# Start your application with pm2
pm2 start app.js --name kk-acebook