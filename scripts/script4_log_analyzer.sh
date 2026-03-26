#!/bin/bash
# script4_log_analyzer.sh

logfile=$1
keyword=$2

if [ -z "$logfile" ]; then
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

if [ -z "$keyword" ]; then
    keyword="error"
fi

if [ ! -f "$logfile" ]; then
    echo "File '$logfile' not found."
    exit 1
fi

echo "Searching for '$keyword' inside $logfile..."
echo ""

count=$(grep -i -c "$keyword" "$logfile")

echo "Total matches: $count"

if [ $count -gt 0 ]; then
    echo ""
    echo "Last 5 matching lines:"
    grep -i "$keyword" "$logfile" | tail -n 5
else
    echo "No matches found."
fi

# extra info (just for context)
echo ""
echo "Log file size: $(du -h "$logfile" | cut -f1)"