# Linux Remote Connection

## Introduction

Remote connection tools allow users to access Linux machines from different locations. The two most common methods for remote access are:

- **SSH (Secure Shell):** A protocol for secure remote login and command execution.
- **VNC (Virtual Network Computing):** A graphical desktop sharing system.

SSH is widely used for terminal-based remote administration, while VNC is useful for accessing a Linux desktop remotely.

# Common Practical Examples

## 1. Connecting to a Remote Server via SSH

### Basic SSH connection
```bash
ssh user@remote-server
```
### Connect with a specific port
```bash
ssh -p 2222 user@remote-server
```
### Enable verbose mode for debugging
```bash
ssh -v user@remote-server
```
### Use a private key for authentication
```bash
ssh -i ~/.ssh/id_rsa user@remote-server
```
### Run a command on the remote server
```bash
ssh user@remote-server "ls -l /var/log"
```
### Copy files from local to remote server
```bash
scp file.txt user@remote-server:/home/user/
```
### Copy files from remote server to local machine
```bash
scp user@remote-server:/home/user/file.txt .
```

## 2. Setting Up a VNC Server

### Install VNC server
```bash
sudo apt update
sudo apt install xfce4 xfce4-goodies -y
sudo apt install tightvncserver -y
vncserver
```
### Set a VNC password
```bash
vncpasswd
```
### Start VNC server on display :1
```bash
vncserver :1
```
### Stop VNC server
```bash
vncserver -kill :1
```
### Configure VNC to start with a specific resolution
```bash
#!/bin/sh

xrdb "$HOME/.Xresources"
xsetroot -solid grey
#x-terminal-emulator -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" &
#x-window-manager &
# Fix to make GNOME work
export XKL_XMODMAP_DISABLE=1
/etc/X11/Xsession
gnome-panel &
gnome-settings-daemon &
metacity &
nautilus &
startxfce4 &
```
### Make file executable and restart server
```bash
chmod +x ~/.vnc/xstartup
vncserver -localhost
```

## 3. Connecting to a VNC Server

### Secure access via tunneling (SSH or PowerShell)
```bash
ssh -L 59000:localhost:5901 -C -N -l student 192.168.1.100
```

### Connect from Linux using `vncviewer`
```bash
sudo apt install tigervnc-viewer
vncviewer -via student@192.168.1.100 localhost:1
```
### Connect using SSH tunnel for security
```bash
ssh -L 5901:localhost:5901 user@remote-server
```
Then, open a VNC client and connect to `localhost:1`.

### Connect from Windows using VNC Viewer
1. Install **RealVNC Viewer** or **TightVNC Viewer**.
2. Open the application and enter `remote-server:1`.
3. Enter the VNC password and connect.

# Additional Notes

- SSH provides secure, encrypted remote access.
- VNC is useful for GUI-based remote access but should be used with SSH tunneling for security.
- Always disable root login over SSH for security (`PermitRootLogin no` in `/etc/ssh/sshd_config`).
- To improve SSH security, use **key-based authentication** instead of passwords.
- Use `ufw` or `iptables` to restrict remote access to SSH and VNC ports.

# Configuration

### Configure SSH for Key-Based Authentication
1. Generate SSH key pair on the client machine:
   ```bash
   ssh-keygen -t rsa -b 4096
   ```
2. Copy the public key to the remote server:
   ```bash
   ssh-copy-id user@remote-server
   ```
3. Disable password authentication (optional for security):
   Edit `/etc/ssh/sshd_config` and set:
   ```bash
   PasswordAuthentication no
   ```
4. Restart SSH service:
   ```bash
   sudo systemctl restart ssh
   ```

### Configure VNC for Persistent Sessions
1. Edit the VNC configuration file (`~/.vnc/xstartup`):
   ```bash
   #!/bin/bash
   xrdb $HOME/.Xresources
   startxfce4 &
   ```
2. Set correct permissions:
   ```bash
   chmod +x ~/.vnc/xstartup
   ```
3. Restart the VNC server:
   ```bash
   vncserver -kill :1
   vncserver :1
   ```
