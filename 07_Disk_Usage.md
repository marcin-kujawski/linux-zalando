# Introduction

Monitoring disk space usage is crucial for system administration. Linux provides tools like **du** (disk usage) and **df** (disk free) to check available space, analyze storage consumption, and prevent disk exhaustion.

# Common Practical Examples

## 1. Checking Available Disk Space

### Display disk usage of mounted filesystems
```bash
df -h
```
### Show disk space in bytes
```bash
df -B1
```
### View inode usage instead of disk space
```bash
df -i
```
### Check disk usage for a specific filesystem
```bash
df -T /dev/sda1
```

## 2. Checking Directory and File Space Usage

### Display disk usage of a directory
```bash
du -sh /var/log
```
### Show usage for all subdirectories
```bash
du -h --max-depth=1 /home
```
### Find the largest files in a directory
```bash
du -ah /home | sort -rh | head -10
```
### Summarize total usage of a directory
```bash
du -csh /var/www
```

## 3. Monitoring Disk Space in Real-Time

### Watch disk space changes every 10 seconds
```bash
watch -n 10 df -h
```
### Identify which directory is consuming the most space
```bash
ncdu /
```

# Additional Notes

- **df** is best used for checking free space on entire filesystems.
- **du** helps in identifying large directories and files.
- **ncdu** (if installed) provides an interactive way to navigate disk usage.
- Regular monitoring prevents sudden disk space shortages that can affect system performance.
