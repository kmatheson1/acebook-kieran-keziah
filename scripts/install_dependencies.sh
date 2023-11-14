#!/bin/bash

curl -s https://deb.nodesource.com/setup_18.x | sudo bash
sudo apt install nodejs -y
cd /home/ec2-user/
npm install