#!/bin/bash

# source /home/ec2-user/.bash_profile

# Check if the application is running
if pm2 describe $APP_NAME &> /dev/null; then
    # If running, stop and delete the application
    pm2 stop $APP_NAME
    pm2 delete $APP_NAME
    echo "Application $APP_NAME stopped."
else
    echo "Application $APP_NAME is not running."
fi