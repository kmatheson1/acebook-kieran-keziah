#!/bin/bash

# Navigate to your app directory
cd /var/acebook

# Start your application with pm2
pm2 start npm --name kk-acebook -- start
