#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Khwahish Agrawal(24MIP10167) | Course: Open Source Software
# Purpose: Loops through key system directories and reports
#          their permissions, ownership, and disk usage

# -------- DIRECTORY LIST --------
# Array of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo " Directory Audit Report"
echo "-------------------------------"

# -------- LOOP THROUGH DIRECTORIES --------
# Iterating over each directory in the array
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then
        # ls -ld → shows directory details (not contents)
        # awk → extracts permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # du -sh → gives total size in human-readable form
        # 2>/dev/null → hides permission denied errors
        # cut -f1 → extracts only size value
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        # Display formatted output
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Git config check
# Check if user has a Git configuration file
if [ -f "$HOME/.gitconfig" ]; then
    echo "Git config exists:"
    ls -l "$HOME/.gitconfig"
else
    echo "Git config does not exist on this system"
fi
