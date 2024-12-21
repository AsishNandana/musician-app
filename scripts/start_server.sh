#!/bin/bash

# Navigate to the application directory
cd /var/www/html

# Ensure there are no old instances of the app running
echo "Stopping old Node.js processes..."
pm2 stop all || true  # This stops any running Node.js processes (use pm2 or similar)

# Start the application using pm2 or node (pm2 is preferred for production)
echo "Starting Node.js app..."
pm2 start server.js # Adjust if your main server file is different
pm2 save # Ensure pm2 restarts on EC2 reboot
