#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Khwahish Agrawal(24MIP10167) | Course: Open Source Software
# Purpose: Checks if a FOSS package is installed, shows its
#          version and license, and prints a philosophy note

# -------- VARIABLE --------
# Name of the package to inspect (can be changed by user)
PACKAGE="git"

# Check if package is installed

# dpkg -l → lists installed packages
# grep -qw → searches exact package name (quiet mode, no output)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."

    # Display package details like version and status
    dpkg -l | grep -w $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

# Philosophy note about the package based on its name 
case $PACKAGE in
    git) echo "Git: enables distributed version control and collaboration" ;;
    apache2) echo "Apache: the web server that built the open internet" ;;
    mysql-server) echo "MySQL: open source database powering applications" ;;
    firefox) echo "Firefox: promotes open and private web browsing" ;;
esac
