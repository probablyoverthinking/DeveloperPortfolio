
#!/bin/bash
# Author: Ayush Kumar Jha
# Purpose: Display system information

echo "========================================"
echo "       SYSTEM INFORMATION REPORT"
echo "========================================"
echo "Name: Ayush Kumar Jha"
echo "Roll Number: 2601010081"
echo "Date: $(date)"
echo

echo "---------- CPU INFORMATION ----------"
echo "CPU Model: $(lscpu | grep 'Model name:' | head -1 | cut -d ':' -f2 | xargs)"
echo "CPU Cores: $(lscpu | awk -F: '/Core\(s\) per socket/ {gsub(/ /,"",$2); cores=$2} /Socket\(s\)/ {gsub(/ /,"",$2); sockets=$2} END {print cores*sockets}')"
echo

echo "---------- MEMORY INFORMATION ----------"
free -h | awk 'NR==2 {
    printf "Total Memory: %s\n", $2
    printf "Used Memory: %s\n", $3
}'
echo

echo "---------- TOP 3 CPU PROCESSES ----------"
ps -eo pid,comm,%cpu --sort=-%cpu | head -4
echo

echo "========================================"
echo "Report generated successfully."
