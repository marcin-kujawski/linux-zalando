# Introduction

A **software package manager** is a tool that automates the process of installing, upgrading, configuring, and removing software on a Linux system. It simplifies dependency management and ensures that software is correctly installed with all required components.

On Debian-based distributions such as Ubuntu, the **APT (Advanced Package Tool)** is the default package manager. It interacts with the system’s package repositories to install and update software efficiently.

# Using APT for Package Management

## Installing Packages
To install a package, use:
```bash
sudo apt install <package-name>
```
Example:
```bash
sudo apt install vim
```
This installs the Vim text editor.

## Searching for Packages
To search for a package before installing it:
```bash
apt search <package-name>
```
Example:
```bash
apt search nginx
```

## Display Package Information
To get detailed information about a package:
```bash
apt show <package-name>
```
Example:
```bash
apt show curl
```

## Updating Package Lists
Before installing or upgrading packages, update the local package database:
```bash
sudo apt update
```
This refreshes package information from repositories.

## Upgrading Installed Packages
To upgrade all installed packages:
```bash
sudo apt upgrade
```
For a complete system upgrade, use:
```bash
sudo apt full-upgrade
```

## Removing Packages
To uninstall a package but keep its configuration files:
```bash
sudo apt remove <package-name>
```
Example:
```bash
sudo apt remove nano
```
To remove a package and its configuration files:
```bash
sudo apt purge <package-name>
```
Example:
```bash
sudo apt purge apache2
```

## Cleaning Up Unused Packages
To remove unused dependencies:
```bash
sudo apt autoremove
```
To clean the local package cache:
```bash
sudo apt clean
```

# Additional Notes
- Always update the package list before installing or upgrading software.
- Use `sudo apt upgrade` regularly to keep the system secure.
- Removing unnecessary packages with `autoremove` helps free up disk space.
