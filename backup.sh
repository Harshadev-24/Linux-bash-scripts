#!/bin/bash
# system_monitor.sh - Monitors CPU, RAM, and Disk usage

echo "📊 System Monitor Report"
echo "============================"

# CPU Usage
echo "🖥️ CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "   " 100 - $8 "% used"}'

# RAM Usage
echo "💾 Memory Usage:"
free -h | awk '/^Mem/ {print "   Used: "$3 " | Free: "$4 " | Total: "$2}'

# Disk Usage
echo "💽 Disk Usage:"
df -h --total | grep "total" | awk '{print "   Used: "$3 " | Free: "$4 " | Total: "$2}'

