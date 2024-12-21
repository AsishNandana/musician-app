#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Stop any running Node.js processes
echo "Stopping Node.js app..."
pm2 stop all || true
