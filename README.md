# Server_stats_bashScript
Linux Server Health Monitoring Script
This repository contains a Bash script that monitors essential metrics of a Linux server, such as CPU usage, memory status, disk space, top processes, OS details, and failed login attempts. The script provides a quick overview of the system's health for sysadmins or developers managing remote machines.

🔧 Features
✅ CPU usage monitoring

✅ Memory usage reporting

✅ Disk space status

✅ Top 5 memory-consuming processes

✅ OS name and version details

✅ Failed login attempts by users

✅ Timestamped health report

📁 Files Included
server_health.sh — Main script file

README.md — Project documentation

**#Output Example**
Server Health Report - Host: ip-172-31-34-12

CPU Usage:
CPU Usage: 8.3%

Memory Usage:
Used: $536 MB / Total: $983 MB (54.51% used)

Disk Usage:
/dev/root 30G 17G 14G 56% /

Top 5 Memory Consuming Processes:
COMMAND         PID     USER    %MEM
python3         1342    root    6.8
nginx           984     www-data 2.3
mysqld          1123    mysql   1.9
node            1567    ubuntu  1.5
java            1672    tomcat  1.2

OS Version:
Ubuntu 20.04.6 LTS

Failed Login Attempts:
Failed login attempts: 3

Report generated on: 2025-08-07 14:03:23
