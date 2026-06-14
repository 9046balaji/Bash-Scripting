#!/bin/bash

set -euo pipefail

APP_DIR="/opt/myapp"
LOG_FILE="/var/log/deploy.log"
HEALTH_URL="http://localhost:8080/health"
MAX_RETRIES=5
DELAY=2

log() {
    echo "[$(date '+%F %T')] $*" | tee -a "$LOG_FILE"
}

log "===== Deployment Started ====="

cd "$APP_DIR"

log "Pulling latest code..."
git pull

log "Pulling Docker images..."
docker compose pull

log "Starting containers..."
docker compose up -d

log "Running health check..."

for ((i=1; i<=MAX_RETRIES; i++)); do
    if curl -fs "$HEALTH_URL" >/dev/null; then
        log "Health check passed."
        log "===== Deployment Successful ====="
        exit 0
    fi

    log "Health check failed (attempt $i/$MAX_RETRIES). Retrying in ${DELAY}s..."
    sleep "$DELAY"
    DELAY=$((DELAY * 2))
done

log "Health check failed after $MAX_RETRIES retries."
log "Recent container logs:"
docker compose logs --tail=50 | tee -a "$LOG_FILE"

log "===== Deployment Failed ====="
exit 1
