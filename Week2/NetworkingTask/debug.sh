#!/bin/bash

DOMAIN="localhost"
PORT=8080
LOG_FILE="/var/log/app.log"

# Connectivity checking
echo "Checking connectivity..."
ping -c 2 $DOMAIN > /dev/null 

if [ $? -eq 0 ]
then
    echo "PASS : SYSTEM REACHABLE"
else 
    echo "FAIL : SYSTEM NOT REACHABLE"
fi

#DNS Check
echo "Checking DNS..."
nslookup $DOMAIN > /dev/null

if [ $? -eq 0 ]; then
    echo "PASS: DNS working"
else
    echo "FAIL: DNS issue"
fi


# Port check
echo "Checking port $PORT..."
netstat -tuln | grep ":$PORT" > /dev/null 

if [ $? -eq 0 ]; then
    echo "PASS: Port $PORT is open"
else
    echo "FAIL: Port $PORT is not open"
fi

# Checking processid
echo "Checking process using port $PORT..."
lsof -i :$PORT > /dev/null 

if [ $? -eq 0 ]; then
    echo "PASS: Process is running "
else
    echo "FAIL: No process running on port $PORT"
fi

#  checking application response
echo "Checking application response..."
curl -s http://$DOMAIN:$PORT > /dev/null 

if [ $? -eq 0 ]; then
    echo "PASS: Application responding"
else
    echo "FAIL: Application not responding"
fi

# checking logs
echo "Checking logs..."
if [ -f "$LOG_FILE" ]; then
    echo "Last 5 log entries:"
    tail -n 5 $LOG_FILE
else
    echo "Log file not found"
fi

echo "       SYSTEM HEALTHCHECK            "

echo "Checking system health..."
echo "CPU Load:"
uptime

AVAILABLE=$(free -h | awk '{print $7}')
echo "Available Memory: $AVAILABLE"

USAGE=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')
echo "Disk Usage: $USAGE%"
if [ $USAGE -gt 90 ]; then
    echo "CRITICAL: Disk almost full"
elif [ $USAGE -gt 70 ]; then
    echo "WARNING: Disk usage high"
else
    echo "Disk usage normal"
fi
