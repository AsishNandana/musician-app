#!/bin/bash

# Navigate to the project directory
cd /home/ec2-user/musician-app/

# Ensure that permissions are correct (if there's a permissions issue)
sudo chown -R ec2-user:ec2-user .  # Ensure the current user has access

# Install dependencies
npm install

# Additional commands to handle npm lock file, if needed
npm audit fix --force  # Optional: automatically fix known vulnerabilities

# Optional: Verify that npm install was successful
if [ $? -eq 0 ]; then
    echo "Dependencies installed successfully!"
else
    echo "Failed to install dependencies!"
    exit 1
fi
