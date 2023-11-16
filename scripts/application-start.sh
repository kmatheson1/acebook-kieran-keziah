#!/bin/bash

# source /home/ec2-user/.bash_profile

# Start your application with pm2

cd /var/acebook
pm2 start npm --name kk-acebook -- start