#!/bin/bash

URL="http://localhost:8080/health"
MAX_RETRIES=5
DELAY=2

for ((i=1; i<=MAX_RETRIES; i++)); do
    if curl -fs "$URL" >/dev/null; then
        echo "Service is healthy"
        exit 0
    fi

    echo "Attempt $i failed. Retrying in $DELAY seconds..."
    sleep "$DELAY"
    DELAY=$((DELAY * 2))   # Exponential backoff
done

echo "Health check failed after $MAX_RETRIES retries"
exit 1
