#!/bin/bash
source /home/ec2-user/.bash_profile
# Check for sudo
if [ "$EUID" -ne 0 ]; then
  echo "Error: Please run this script with sudo."
  exit 1
fi

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
    echo -e "$repo_content" | sudo tee "$repo_file" > /dev/null
  fi

  # Install MongoDB
  sudo yum install -y mongodb-org
fi

# Start and enable MongoDB
sudo systemctl start mongod
sudo systemctl enable mongod

cd /var/acebook

sudo chown -R ec2-user:ec2-user /var/acebook
npm install