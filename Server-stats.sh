#!/bin/bash

# System Health Monitor Script

# Function to get real-time CPU usage
cpu_usage() {
    echo "----- CPU Usage -----"
    top -bn1 | grep "%Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'
}

# Function to get real-time Memory usage
memory_usage() {
    echo "----- Memory Usage -----"
    free -m | awk 'NR==2{printf "Used: $"3"MB / Total: $"2"MB ("$3/$2*100"% used)\n"}'
}

# Function to get Disk usage
disk_usage() {
    echo "----- Disk Usage -----"
    df -h | awk '$NF=="/"{print "Used: "$3" / Total: "$2" ("$5" used)"}'
}

# Function to get top 5 CPU consuming processes
top_cpu_processes() {
    echo "----- Top 5 CPU Consuming Processes -----"
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
}

# Function to get top 5 Memory consuming processes
top_mem_processes() {
    echo "----- Top 5 Memory Consuming Processes -----"
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
}

# Function to detect OS version
os_version() {
    echo "----- OS Version -----"
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo "OS: $NAME $VERSION"
    elif [ -f /etc/redhat-release ]; then
        cat /etc/redhat-release
    else
        echo "OS version information not found."
    fi
}

# Function to get system uptime and load average
uptime_load() {
    echo "----- System Uptime & Load Average -----"
    uptime
}

# Function to get number of logged in users
logged_in_users() {
    echo "----- Logged-in Users -----"
    who | wc -l | awk '{print "Number of Logged-in Users: "$1}'
}

# Function to detect failed login attempts
failed_logins() {
    echo "----- Failed Login Attempts -----"
    if [ -f /var/log/auth.log ]; then
        grep "Failed password" /var/log/auth.log | wc -l | awk '{print "Failed login attempts: "$1}'
    elif [ -f /var/log/secure ]; then
        grep "Failed password" /var/log/secure | wc -l | awk '{print "Failed login attempts: "$1}'
    else
        echo "Log file not found."
    fi
}

# Run all functions
cpu_usage
memory_usage
disk_usage
top_cpu_processes
top_mem_processes
os_version
uptime_load
logged_in_users
failed_logins
