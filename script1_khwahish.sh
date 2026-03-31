#!/bin/bash
# Script 1: System Identity Report
# Author : Khwahish Agrawal(24MIP10167) | Course : Open Source Software
# Purpose : Displays system info as a welcome/identity screen

# --- Variables ---
# Storing student name and preferred open-source software
STUDENT_NAME="Khwahish Agrawal"
SOFTWARE="Git"

# --- System info ---
KERNEL=$(uname -r)          # uname -r → gives kernel version of the system
USER_NAME=$(whoami)          # whoami → returns currently logged-in username
UPTIME=$(uptime -p)                    # uptime -p → shows system uptime in human-readable format
DATE=$(date)                             # date → displays current system date and time
DISTRO=$(lsb_release -d | cut -f2)        # lsb_release -d → gives Linux distribution description
                                          # cut -f2 → extracts only the actual name (removes "Description:")

# --- Display ---
# Printing formatted system report using echo
echo "=============================="
echo " Open Source Audit - $STUDENT_NAME"
echo "=============================="

# Displaying selected software
echo "Software : $SOFTWARE"

# Displaying system details
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"

# Displaying license info (Linux uses GPL license)
echo "License  : GPL (Linux Kernel License)"

