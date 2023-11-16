#!/bin/bash

# source /home/ec2-user/.bash_profile

# sudo yum remove nodejs
curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
yum install -y nodejs
# Install pm2 globally
npm install pm2@latest -g

repo_file="/etc/yum.repos.d/mongodb-org-7.0.repo"
repo_content="[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-7.0.asc
"

# Check if MongoDB is already installed
if ! command -v mongod &> /dev/null; then
    # Check if the repository file exists
    if [ ! -e "$repo_file" ]; then
    # Create the repository file with the specified content
    echo -e "$repo_content" | tee "$repo_file" > /dev/null
    fi

    # Install MongoDB
    yum install -y mongodb-org
fi

# Start and enable MongoDB
systemctl start mongod
systemctl enable mongod

