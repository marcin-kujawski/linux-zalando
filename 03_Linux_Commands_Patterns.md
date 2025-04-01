# Linux Commands Patterns

## Introduction

In Linux, command-line tools such as `grep`, `awk`, and `sed` provide powerful text-processing capabilities. These tools help search, manipulate, and process text efficiently. Understanding patterns and parameters in basic commands allows users to automate tasks, extract information, and modify files dynamically.

### Key Tools:
- **`grep`**: Searches for text patterns in files.
- **`awk`**: A programming language for pattern scanning and text processing.
- **`sed`**: A stream editor used for modifying files and streams.

# Common Practical Examples

## 1. Searching Patterns with `grep`

### Find a word in a file
```bash
grep "error" /var/log/syslog
```
### Search case-insensitively
```bash
grep -i "warning" /var/log/syslog
```
### Show line numbers with matches
```bash
grep -n "fail" /var/log/auth.log
```
### Search recursively in directories
```bash
grep -r "TODO" /home/user/projects
```
### Display only matching words
```bash
grep -o "[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}" phonebook.txt
```

## 2. Text Processing with `awk`

### Print the second column from a file
```bash
awk '{print $2}' data.txt
```
### Filter and display lines where the value in column 3 is greater than 50
```bash
awk '$3 > 50' data.txt
```
### Print lines containing a specific pattern
```bash
awk '/error/ {print}' logs.txt
```
### Sum values in a specific column
```bash
awk '{sum+=$2} END {print sum}' sales.txt
```
### Extract usernames from `/etc/passwd`
```bash
awk -F: '{print $1}' /etc/passwd
```

## 3. Modifying Text with `sed`

### Replace a word in a file
```bash
sed 's/error/fixed/' logs.txt
```
### Replace all occurrences of a word
```bash
sed 's/error/fixed/g' logs.txt
```
### Delete blank lines from a file
```bash
sed '/^$/d' file.txt
```
### Remove the first column from a CSV file
```bash
sed 's/^[^,]*,//' data.csv
```
### Insert a line after a specific pattern
```bash
sed '/pattern/a\New Line Here' file.txt
```

# Additional Notes

- `grep`, `awk`, and `sed` are fundamental for log analysis, data extraction, and text manipulation.
- Regular expressions enhance pattern-matching efficiency.
- `sed` is useful for in-place file modifications.
- `awk` is powerful for field-based data processing.
- Use `grep -E` for extended regular expressions.
