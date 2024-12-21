#!/bin/bash

# Navigate to the application directory
cd /var/app/current || exit

# Ensure there are no old instances of the app running
echo "Stopping old Node.js processes..."
pm2 stop all || true  # Stops any running Node.js processes (ignores errors if no process is running)

# Install dependencies (just in case they were not installed)
echo "Installing dependencies..."
npm install --production

# Start the application using pm2 (preferred for production)
echo "Starting Node.js app..."
pm2 start app.js --name musician-app  # Adjust 'app.js' if your entry file is named differently
pm2 save  # Save the process list for auto-restart

# Ensure pm2 restarts on EC2 reboot
echo "Enabling pm2 to start on reboot..."
pm2 startup systemd -u ec2-user --hp /home/ec2-user
