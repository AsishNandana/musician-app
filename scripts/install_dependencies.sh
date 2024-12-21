#!/bin/bash

# Navigate to the app directory (assuming it's in /var/www/html or your set destination)
cd /var/www/html

# Install the Node.js dependencies using npm
echo "Installing dependencies..."
npm install --production

# Optional: If using Yarn
# yarn install --production
