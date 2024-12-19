#!/bin/bash
APP_PID=$(pgrep -f "node /home/ec2-user/musician-app")
if [ -n "$APP_PID" ]; then
    kill -9 $APP_PID
fi
