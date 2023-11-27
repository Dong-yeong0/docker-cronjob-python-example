#!/bin/bash

printenv > /etc/environment

touch /app/logs/app.log
chmod 755 /app/logs/app.log
echo "* * * * * python3 /app >> /app/logs/app.log 2>&1" >> /etc/cron.d/cronlist 
crontab /etc/cron.d/cronlist

sleep 1
systemctl start cron
sleep 1

/bin/bash