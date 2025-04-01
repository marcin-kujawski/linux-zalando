# Introduction

To efficiently manage a Linux system, administrators often need to gather information about the hardware components. Several command-line tools help display details about the system’s hardware, including connected USB devices, CPU, memory, storage, and more.

# Tools for Displaying Hardware Information

## Displaying USB Devices
To list all connected USB devices:
```bash
lsusb
```
This command provides details about connected USB devices, such as flash drives, keyboards, and external hard drives.

To get detailed information about a specific USB device:
```bash
lsusb -v
```

## Displaying PCI Devices
To list PCI devices such as network cards and GPUs:
```bash
lspci
```
For more detailed information:
```bash
lspci -v
```

## Checking CPU Information
To display detailed CPU specifications:
```bash
lscpu
```
To get raw details from the `/proc` filesystem:
```bash
cat /proc/cpuinfo
```

## Checking Memory Information
To display system memory usage:
```bash
free -h
```
For detailed memory specifications:
```bash
cat /proc/meminfo
```

## Checking Storage Devices
To list available block devices (disks and partitions):
```bash
lsblk
```
To view detailed information about disk partitions:
```bash
fdisk -l
```

## Checking Hard Drive Health (SMART Status)
To check hard drive health status:
```bash
sudo smartctl -a /dev/sda
```
(Requires `smartmontools` package.)

## Displaying Network Interfaces
To list all network interfaces:
```bash
ip link show
```
To display network interface details:
```bash
ifconfig -a  # (Deprecated, use 'ip' command instead)
ip addr show
```

## Checking Battery Status (Laptops)
To check battery status on a laptop:
```bash
upower -i /org/freedesktop/UPower/devices/battery_BAT0
```

## Listing Mounted Filesystems
To view mounted file systems:
```bash
mount | column -t
```
To display filesystem usage:
```bash
df -h
```

## Displaying Kernel and System Information
To get Linux kernel version:
```bash
uname -r
```
To get detailed system information:
```bash
uname -a
```

# Additional Notes
- Some commands require root privileges (`sudo`), especially those interacting with hardware components.
- USB devices may not always be listed if not properly detected by the system.
- `smartctl` requires the `smartmontools` package to be installed.
