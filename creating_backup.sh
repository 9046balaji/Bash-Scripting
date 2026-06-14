#!/bin/bash

BACKUP_DIR="/backups"
SOURCE_DIR="/data"

mkdir -p "$BACKUP_DIR"

# Create backup
tar -czf "$BACKUP_DIR/backup_$(date +%F_%H%M%S).tar.gz" "$SOURCE_DIR"

# Keep only latest 5 backups
ls -1t "$BACKUP_DIR"/backup_*.tar.gz | tail -n +6 | xargs -r rm -f
