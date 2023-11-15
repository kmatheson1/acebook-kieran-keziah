#!/bin/bash

cd /var/acebook

source /home/ec2-user/.bash_profile

# Check if the application is running
if pm2 describe kk-acebook &> /dev/null; then
  # If running, stop and delete the application
  pm2 stop kk-acebook
  pm2 delete kk-acebook
  echo "Application kk-acebook stopped."
else
  echo "Application kk-acebook is not running."
fi