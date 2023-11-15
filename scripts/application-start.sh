#!/bin/bash

cd /var/acebook

source /home/ec2-user/.bash_profile

sudo env "PATH=$PATH" pm2 start app.js --name kk-acebook