#!/bin/bash

repo_file="/etc/yum.repos.d/mongodb-org-7.0.repo"
repo_content="[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-7.0.asc
"

# Check if the repository file already exists
if [ -e "$repo_file" ]; then
  echo "Error: Repository file $repo_file already exists."
  exit 1
fi

# Create the repository file with the specified content
echo -e "$repo_content" | sudo tee "$repo_file" > /dev/null

yum install -y mongodb-org

cd /var/acebook

systemctl start mongod

systemctl enable mongod
