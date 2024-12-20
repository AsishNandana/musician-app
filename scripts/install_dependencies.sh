#!/bin/bash
cd /home/ec2-user/musician-app/ || exit 1
# Ensure correct ownership of all files in the directory
sudo chown -R ec2-user:ec2-user /home/ec2-user/musician-app
# Set appropriate permissions for the directory and files
sudo chmod -R 755 /home/ec2-user/musician-app
# Install dependencies
npm install
# Build the project
npm run build
