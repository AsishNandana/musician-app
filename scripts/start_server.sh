#!/bin/bash
cd /home/ec2-user/musician-app
npm start > app.log 2>&1 &
