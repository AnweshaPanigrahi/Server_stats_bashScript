# 🖥️ Server Stats Script

A simple and effective bash script to display key server statistics including CPU usage, memory usage, disk usage, uptime, top processes, network information, OS version, failed login attempts, and more.

---

## 📂 Files

- `server-stats.sh`: The main executable script.

---

## 🛠️ Features

- CPU usage report
- Memory and Disk utilization
- Uptime and Load average
- Top 5 CPU & Memory consuming processes
- IP and Hostname information
- OS version and kernel details
- Last reboot time
- Failed login attempts (for SSH)
- Currently logged-in users

---

## 🚀 Usage

### 1. Clone the repository

```bash
git clone https://github.com/AnweshaPanigrahi/Server_stats_bashScript
cd server-stats

**### Make script executable**

```bash
chmod +x server-stats.sh

**###Run Script**

```bash
./server-stats.sh


### Sample output

```bash
===== SERVER STATS =====

Hostname      : ip-172-31-34-12
IP Address    : 172.31.34.12

CPU Usage     : 12.5%
Memory Usage  : Used: 800MB / Total: 2000MB (40.00% used)
Disk Usage    : /dev/xvda1 - Used: 6G / Total: 20G (30%)

Uptime        : 3 days, 6 hours, 22 minutes
Load Average  : 0.30, 0.42, 0.50

Top 5 CPU Consuming Processes:
PID    USER     CPU%   COMMAND
2314   root     25.0   python3
1984   ubuntu   15.2   java
1231   root     10.4   nginx
3214   mysql     9.2   mysqld
2234   ubuntu    6.7   node

Top 5 Memory Consuming Processes:
PID    USER     MEM%   COMMAND
1984   ubuntu   35.2   java
3214   mysql    28.7   mysqld
2314   root     20.0   python3
1231   root     14.6   nginx
2234   ubuntu    9.4   node

OS Version    : Ubuntu 22.04.1 LTS
Kernel        : Linux 5.15.0-1069-aws

Last Reboot   : Thu Aug  1 14:53

Failed Login Attempts:
Aug 06 06:13:41 sshd[18156]: Failed password for invalid user admin from 92.118.39.165 port 48416 ssh2
Aug 06 06:13:42 sshd[18158]: Failed password for invalid user admin from 92.118.39.165 port 48416 ssh2

Currently Logged-In Users:
ubuntu    pts/0        2025-08-06 06:00 (13.233.15.148)
