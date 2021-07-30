
#!/bin/bash

#creating sysinfo file:
touch sysinfo.txt
file=sysinfo.txt

#redirecting output into file:
hostname >> $file
grep "cpu cores" /proc/cpuinfo >> $file
grep "MemTotal" /proc/meminfo >> $file
df -h /dev/sda5 >> $file

echo "Hostname, cpu core number, total memory and total disk size saved in file: sysinfo.txt"
