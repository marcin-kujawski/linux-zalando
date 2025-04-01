# Introduction

The **Filesystem Hierarchy Standard (FHS)** defines the directory structure and directory contents in Unix and Linux operating systems. It helps maintain consistency across distributions and ensures that users and applications can predictably find necessary files.

The FHS organizes files into predefined directories, each serving a specific purpose. Understanding this hierarchy is crucial for system administration, troubleshooting, and software installation.

- Hierarchical
- The name of a file is just one property of its inode, which is the most basic and fundamental object.
- Inodes are stored on the filesystem and contain information such as rights, timestamp size, etc.
- A list of currently supported filesystems can be seen at /proc/filesystems
- file system - block device - we can copy it to a file and use it as if it were a file system

# Common FHS Directories

Below is a table summarizing the standard FHS mount points and their purposes:

| Directory   | Purpose |
|------------|---------|
| `/`        | Root directory, the top-level directory of the filesystem. |
| `/bin`     | Essential command binaries needed for system boot and single-user mode. |
| `/boot`    | Contains bootloader files, including the kernel and initramfs images. |
| `/dev`     | Device files representing hardware components (e.g., `/dev/sda`). |
| `/etc`     | System-wide configuration files and scripts. |
| `/home`    | User home directories (e.g., `/home/user`). |
| `/lib`     | Shared libraries required for basic system operation. |
| `/lib64`   | 64-bit shared libraries (for 64-bit systems). |
| `/media`   | Mount point for removable media like USB drives and CDs. |
| `/mnt`     | Temporary mount point for manually mounted filesystems. |
| `/opt`     | Optional software packages installed manually. |
| `/proc`    | Virtual filesystem containing process and system information. |
| `/root`    | Home directory for the root user. |
| `/run`     | Stores volatile runtime data (e.g., process IDs, sockets). |
| `/sbin`    | System administration binaries, typically for superuser use. |
| `/srv`     | Data for services such as web servers (`/srv/www`). |
| `/sys`     | Virtual filesystem providing kernel and hardware interaction. |
| `/tmp`     | Temporary files that are deleted on reboot. |
| `/usr`     | User binaries, libraries, documentation, and source code. |
| `/var`     | Variable files like logs, caches, and mail queues. |

# Practical Examples

### 1. Checking Disk Usage of FHS Directories
```bash
du -sh /var /home /tmp
```

### 2. Listing Files in `/etc` to View Configuration Files
```bash
ls -l /etc
```

### 3. Checking Mounted Filesystems and Storage Usage
```bash
df -h
```

### 4. Viewing Running Processes in `/proc`
```bash
ls /proc | head -10
```

### 5. Checking Kernel Version from `/proc`
```bash
cat /proc/version
```

# Soft and hard links
### Soft link

Soft link - a shortcut, after deleting the file the link still exists but does not point to anything (because we deleted the file). Number of i-nodes (i-nodes) = 1.
```
ln -s file link <- soft link 
ls -li <- listing the files with the number of nodes
```
### Hard link

Hard link - a duplicate, all changes made on the link or on the original file are visible everywhere, after deleting the file the link remains and does not delete, it is still accessible and usable, the rights given to the file or link are duplicated on the duplicate. Number of i-nodes (i-nodes) = 2.
```
ln file link <- hard link
ls -li <- list the files with the number of nodes
```

To find all hardlinks you can run the find command:
```
find . -inum NUM
```

# Additional Notes

- The FHS structure is crucial for software compatibility and system integrity.
- `/usr/local/` is used for manually installed software, keeping it separate from system-managed packages.
- System administrators should avoid modifying system directories unless necessary to prevent breaking the OS.
