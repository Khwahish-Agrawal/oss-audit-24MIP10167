#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Khwahish Agrawal(24MIP10167) | Course: Open Source Software 
# Purpose: Asks the user 3 questions interactively and
#          generates a personalised open source manifesto,
#          then saves it to a .txt file

echo "Answer three questions to generate your manifesto."
echo ""

# -------- USER INPUT --------
# read -p → takes input with prompt
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# -------- SYSTEM VARIABLES --------
# date → formatted current date
DATE=$(date '+%d %B %Y')
# whoami → gets current username for filename
OUTPUT="manifesto_$(whoami).txt"

# Compose manifesto

# >  → creates/overwrites file
# >> → appends content to file

echo "Open Source Manifesto" > "$OUTPUT"
echo "----------------------" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "On $DATE, I stand as a believer in the power of open source and the spirit of collaboration." >> "$OUTPUT"
echo "In my daily life, I use tools like $TOOL, which empower me to learn, create, and innovate freely." >> "$OUTPUT"
echo "To me, $FREEDOM represents the ability to share knowledge, collaborate without barriers, and grow together as a global community." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that technology should not be limited by restrictions, but instead should be accessible to everyone, regardless of their background." >> "$OUTPUT"
echo "My vision is to contribute to the world by building $BUILD — something meaningful that can help others and be shared openly." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Open source is more than just code; it is a philosophy of trust, transparency, and collective growth." >> "$OUTPUT"
echo "Through my journey as a developer, I commit to learning continuously, contributing to open communities, and supporting the idea that knowledge should be free and shared." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is my manifesto — a promise to embrace openness, collaboration, and the true spirit of innovation." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
