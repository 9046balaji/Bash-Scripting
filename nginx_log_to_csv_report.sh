#!/bin/bash

LOG_FILE="/var/log/nginx/access.log"
OUTPUT="status_report.csv"

awk '
{
    status[$9]++
}
END {
    print "status_code,count"
    for (code in status)
        print code "," status[code]
}
' "$LOG_FILE" > "$OUTPUT"

echo "CSV report generated: $OUTPUT"
