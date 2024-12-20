#!/bin/bash

# Navigate to the project directory
cd /home/ec2-user/musician-app/ || { echo "Directory not found! Exiting."; exit 1; }

# Ensure that permissions are correct (if there's a permissions issue)
sudo chown -R ec2-user:ec2-user .  # Ensure the current user has access (skip if unnecessary)

# Install dependencies
echo "Installing dependencies..."
npm install || { echo "npm install failed! Exiting."; exit 1; }

# Fix vulnerabilities (optional, be cautious of the --force flag)
echo "Fixing known vulnerabilities (if any)..."
npm audit fix --force || { echo "npm audit fix failed! Exiting."; exit 1; }

# Optional: Verify that npm install was successful
echo "Dependencies installed successfully!"
