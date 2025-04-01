# Editing Text Files Using Basic Editors (vi and nano)

## Introduction
Linux provides powerful text editors for modifying configuration files and scripts. The two most commonly used editors are:
- **vi/vim:** A highly efficient, modal text editor available on almost all Unix-like systems.
- **nano:** A user-friendly, simple text editor for quick modifications.

## Common Practical Examples

### Using vi/vim

#### Open a file in vi
```bash
vi filename.txt
```
#### Enter insert mode (start editing)
```bash
i
```
#### Save changes and exit
```bash
:wq
```
#### Exit without saving
```bash
:q!
```
#### Search for a word in a file
```bash
/word
```
#### Copy and paste a line
```bash
yy   # Copy line
p    # Paste below
```
#### Delete a line
```bash
dd
```

### Using nano

#### Open a file with nano
```bash
nano filename.txt
```
#### Save changes
```bash
CTRL + O, then press ENTER
```
#### Exit nano
```bash
CTRL + X
```
#### Search for a word
```bash
CTRL + W, then type the word and press ENTER
```
#### Cut and paste a line
```bash
CTRL + K   # Cut
CTRL + U   # Paste
```

## Additional Notes
- **vi/vim** is preferred for advanced users due to its powerful features.
- **nano** is easier to use for beginners and quick edits.
- Always back up configuration files before editing.

This guide now includes text editing using vi and nano. Let me know if you need additional details!

