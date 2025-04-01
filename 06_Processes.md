# Introduction

In Linux, a **process** is an instance of a running program. The operating system manages processes to ensure efficient resource allocation and multitasking. Processes can be listed, monitored, and controlled using various commands.

# Common Practical Examples

## 1. Listing Processes

### View all running processes
```bash
ps aux
```
### View processes for a specific user
```bash
ps -u username
```
### View processes in a hierarchical tree format
```bash
ps axjf
```
### Display real-time process monitoring (similar to Task Manager)
```bash
top
```
### Interactive real-time process monitoring with enhanced UI
```bash
htop
```

## 2. Managing Processes

### Kill a process by PID
```bash
kill PID
```
### Kill a process by name
```bash
pkill process_name
```
### Forcefully kill a process
```bash
kill -9 PID
```
### Terminate all instances of a process
```bash
killall process_name
```
### Suspend a process (send it to the background)
```bash
CTRL + Z
```
### Resume a suspended process in the background
```bash
bg
```
### Bring a background process to the foreground
```bash
fg
```

## 3. Monitoring and Debugging Processes

### Display detailed information about a process
```bash
ps -p PID -o pid,ppid,%cpu,%mem,cmd
```
### Show open files by a process
```bash
lsof -p PID
```
### Show processes listening on network ports
```bash
netstat -tulnp
```
### Monitor system resource usage per process
```bash
sar -u 5 10
```
### Find the top memory-consuming processes
```bash
ps aux --sort=-%mem | head -10
```

# Additional Notes

- **SIGTERM (kill -15)** is the default signal used to terminate a process gracefully.
- **SIGKILL (kill -9)** forcefully terminates a process without allowing cleanup.
- **jobs** command lists background and suspended processes.
- **nice & renice** commands adjust process priority levels.
