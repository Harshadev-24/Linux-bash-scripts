#!/bin/bash
# uptime_report.sh - Displays system uptime, logged-in users, and load averages

echo "🕒 Uptime Report"
echo "==============================="

# Uptime
UPTIME=$(uptime -p)
echo "⏳ Uptime: $UPTIME"

# Logged in users
USERS=$(who | wc -l)
echo "👥 Logged-in Users: $USERS"

# Load averages
LOAD=$(uptime | awk -F'load average:' '{ print $2 }')
echo "⚡ Load Average (1m, 5m, 15m): $LOAD"
