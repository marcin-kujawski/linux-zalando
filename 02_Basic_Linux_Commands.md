# Basic Linux Commands

## Introduction

Linux provides a variety of command-line tools to interact with the filesystem, manage processes, and perform system administration tasks. Understanding basic commands is essential for navigating and managing a Linux system efficiently. This section covers fundamental commands including:

- `ls` (list directory contents)
- `find` (search for files and directories)
- `ps` (display process information)
- `mv` (move or rename files)
- `cp` (copy files and directories)
- `rm` (remove files and directories)
- `cd` (change directory)

# Common Practical Examples

## 1. List Files and Directories (`ls`)
### Display contents of a directory
```bash
ls
```
### Show hidden files
```bash
ls -a
```
### Display files with detailed information
```bash
ls -l
```
### Sort files by modification time (newest first)
```bash
ls -lt
```

## 2. Find Files and Directories (`find`)
### Search for a file by name in the current directory
```bash
find . -name "file.txt"
```
### Find all `.log` files in `/var/log` modified in the last 7 days
```bash
find /var/log -name "*.log" -mtime -7
```
### Search for empty files
```bash
find /home/user -type f -empty
```
### Find and delete all `.tmp` files
```bash
find /tmp -name "*.tmp" -exec rm {} \;
```

## 3. Display Running Processes (`ps`)
### Show all running processes
```bash
ps aux
```
### Filter a specific process by name
```bash
ps aux | grep nginx
```
### Display processes for a specific user
```bash
ps -u username
```
### Show process tree
```bash
ps -axjf
```

## 4. Move and Rename Files (`mv`)
### Move a file to another directory
```bash
mv file.txt /home/user/documents/
```
### Rename a file
```bash
mv oldname.txt newname.txt
```
### Move multiple files to a directory
```bash
mv file1.txt file2.txt /home/user/
```

## 5. Copy Files and Directories (`cp`)
### Copy a file to another location
```bash
cp file.txt /home/user/
```
### Copy a directory recursively
```bash
cp -r /source/dir /destination/dir
```
### Copy multiple files
```bash
cp file1.txt file2.txt /destination/
```
### Preserve file attributes during copy
```bash
cp -p file.txt /backup/
```

## 6. Remove Files and Directories (`rm`)
### Delete a file
```bash
rm file.txt
```
### Delete multiple files
```bash
rm file1.txt file2.txt
```
### Remove a directory and its contents
```bash
rm -r /home/user/temp/
```
### Force delete a file without confirmation
```bash
rm -f important.log
```

## 7. Change Directory (`cd`)
### Move to the home directory
```bash
cd ~
```
### Navigate to a specific directory
```bash
cd /var/log/
```
### Move to the previous directory
```bash
cd -
```
### Move up one directory level
```bash
cd ..
```

# Additional Notes
- Always use `rm -i` to avoid accidental deletion of important files.
- Use `find -exec` to combine search and action operations.
- When using `ps`, consider `htop` for a more interactive process viewer.
- `ls -lh` is useful for viewing file sizes in a human-readable format.
- Use tab completion to quickly navigate directories with `cd`.

