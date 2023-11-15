#!/bin/bash

cd /var/acebook

source /home/ec2-user/.bash_profile

sudo pm2 start app.js --name kk-acebook