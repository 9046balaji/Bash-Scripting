#!/bin/bash

LOG_DIR="/var/log/app"

# Compress .log files older than 7 days
find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \;

# Delete compressed logs older than 30 days
find "$LOG_DIR" -name "*.gz" -mtime +30 -delete
