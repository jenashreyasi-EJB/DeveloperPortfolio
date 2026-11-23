#!/bin/bash
# Author: Shreyasi Jena
# Purpose: Display system information report

echo "======================================"
echo "       SYSTEM INFORMATION REPORT"
echo "======================================"

echo "Name: Shreyasi Jena"
echo "Roll Number: 2601730206"
echo "Date: $(date)"

echo ""
echo "---------- CPU INFORMATION ----------"

CPU_MODEL=$(lscpu | grep "Model name" | head -1 | cut -d ':' -f2)
CPU_CORES=$(lscpu | awk -F: '/Core\(s\) per socket/ {gsub(/ /,"",$2); cores=$2} /Socket\(s\)/ {gsub(/ /,"",$2); sockets=$2} END {print cores*sockets}')

echo "CPU Model: $CPU_MODEL"
echo "Number of Cores: $CPU_CORES"

echo ""
echo "---------- MEMORY INFORMATION ----------"

free -h | awk 'NR==2 {
    print "Total Memory: " $2
    print "Used Memory: " $3
}'

echo ""
echo "---------- TOP 3 PROCESSES BY CPU ----------"

ps aux --sort=-%cpu | head -4

echo ""
echo "======================================"
echo "Report generated successfully."
echo "======================================"
