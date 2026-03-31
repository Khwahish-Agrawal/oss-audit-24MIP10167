#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages
# Author: Khwahish Agrawal(24MIP10167) | Course: Open Source Software
# Purpose: Reads a log file, counts keyword occurrences,
#          and prints a summary with matching lines

# -------- INPUT VARIABLES --------
# $1 → log file path (first argument)
# $2 → keyword (optional, default = "error")
LOGFILE=$1
KEYWORD=${2:-"error"}            # Default keyword is 'error'
COUNT=0

# Retry if file not found or empty (do-while)
while true; do
    if [ ! -f "$LOGFILE" ]; then
        echo "Error: File $LOGFILE not found."
    elif [ ! -s "$LOGFILE" ]; then
        echo "Error: File $LOGFILE is empty."
    else
        break
    fi
    read -p "Enter valid log file path: " LOGFILE
done

# Count keyword occurrences
# Read file line by line
# IFS= → prevents trimming spaces
# -r → prevents backslash interpretation
while IFS= read -r LINE; do
    # grep -i → case-insensitive search
    # grep -q → quiet mode (only checks, no output)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print last 5 matching lines (tail + grep)
# grep -i → filter matching lines
# tail -5 → show last 5 results
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
