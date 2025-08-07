# 🖥️ Server Health Monitoring Script

A lightweight, dependency-free Bash script for real-time monitoring of a Linux server’s health and security. It’s perfect for DevOps, sysadmins, and developers managing virtual machines or cloud servers.

---

## ✅ Features

- CPU Usage Monitor  
- Memory Usage Display  
- Disk Space Overview  
- Top 5 CPU & Memory Consuming Processes  
- OS Version Detection (Debian & RHEL based)  
- System Uptime & Load Average  
- Logged-in Users Count  
- Failed Login Attempt Summary  

---

## 🚀 How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/server-health-monitor.git
cd server-health-monitor
```

### 2. Make the Script Executable

```bash
chmod +x server_status.sh
```

### 3. Run the Script

```bash
./server_status.sh
```

---

## 🧾 Sample Output

```text
----- CPU Usage -----
CPU Usage: 9.1%

----- Memory Usage -----
Used: 344MB / Total: 914MB (37.6368% used)

----- Disk Usage -----
Used: 1.8G / Total: 6.8G (26% used)

----- Top 5 CPU Consuming Processes -----
    PID    PPID CMD                         %MEM %CPU
   1411    1353 sshd: ubuntu@pts/1           0.7  0.0
      1       0 /sbin/init                   1.4  0.0
    617       1 /usr/lib/snapd/snapd         3.8  0.0
    987       1 /snap/amazon-ssm-agent/1132  2.0  0.0
    125       1 /usr/lib/systemd/systemd-jo  1.4  0.0

----- Top 5 Memory Consuming Processes -----
    PID    PPID CMD                         %MEM %CPU
    617       1 /usr/lib/snapd/snapd         3.8  0.0
    186       1 /sbin/multipathd -d -s       2.8  0.0
    761       1 /usr/bin/python3 /usr/share  2.4  0.0
    610       1 /usr/bin/python3 /usr/bin/n  2.1  0.0
    987       1 /snap/amazon-ssm-agent/1132  2.0  0.0

----- OS Version -----
OS: Ubuntu 24.04.2 LTS (Noble Numbat)

----- System Uptime & Load Average -----
 09:34:20 up 32 min,  1 user,  load average: 0.00, 0.00, 0.00

----- Logged-in Users -----
Number of Logged-in Users: 1

----- Failed Login Attempts -----
Failed login attempts: 0
```

---

## 📋 Notes

- Designed for Ubuntu/Debian servers (can be adapted for RHEL/CentOS).
- Requires no third-party dependencies.
- Script reads logs from `/var/log/auth.log`.

---

## 📄 License

MIT License © 2025 [Your Name]
