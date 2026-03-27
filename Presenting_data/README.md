# Linux Standard File Descriptors
| **File Descriptor** | **Abbreviation** | **Description** |
| ------------------- | ---------------- | --------------- |
| 0                   | STDIN            | Standard input  |
| 1                   | STDOUT           | Standard output |
| 2                   | STDERR           | Standard error  |

## 1. STDIN (Standard Input)

### STDIN refers to the standard input channel in the shell. For a terminal interface, this is typically the keyboard.

### Commands or scripts can read input from STDIN. For instance, using the cat command will take input from STDIN by default:

`$ cat`
`this is a test`

### Input redirection (<) can be used to provide input from a file rather than the keyboard:

`$ cat < testfile`

### This can be useful when you want a script or command to process input from a file instead of manual entry.

## 2. STDOUT (Standard Output)

### STDOUT is the standard output channel, where commands typically send their results. In a terminal interface, this is the screen (monitor).

### By default, many commands send their output to STDOUT. For example:

`$ ls -l`

### Output redirection (>) allows you to write the output to a file instead of the terminal:

`$ ls -l > outputfile.txt`

### To append output to a file instead of overwriting, use >>:

`$ who >> outputfile.txt`

### This is helpful for logging outputs in scripts or commands.

## 3. STDERR (Standard Error)

### STDERR is the channel used to handle error messages in the shell. By default, errors are displayed on the screen.

### When redirecting STDOUT using >, error messages still appear on the screen. This can be problematic when you want all output, including errors, to be logged in a file.

### To redirect STDERR to a file, you can use 2> (where 2 represents the file descriptor for STDERR):

`$ ls -al badfile > outputfile.txt 2> errorfile.txt`

### This will send the normal output to outputfile.txt and any error messages to errorfile.txt.

### You can also redirect both STDOUT and STDERR to the same file:

`$ ls -al badfile > outputfile.txt 2>&1`

### This ensures that both standard output and error messages are logged together in the same file.


# Permanent redirections(permaRedirect.sh)
### The exec command starts a new shell and redirects the STDOUT file descriptor to a file.All output in the script that goes to STDOUT is instead redirected to the file. It allows for modifying the input/output behavior for the rest of the script or shell session.

# Redirecting Input in Scripts
### exec: The exec command in shell scripting is used to replace the current shell with a new one or to change file descriptors. It allows for modifying the input/output behavior for the rest of the script or shell session.

### 1: In Unix-like systems, file descriptor 1 refers to STDOUT (Standard Output). By default, file descriptor 1 is connected to the terminal screen.

### >: This is the redirection operator. It redirects the output of a command to a file instead of displaying it on the screen.

### testout: This is the name of the file where the output will be redirected. If the file doesn't exist, it will be created; if it already exists, its contents will be overwritten.

# Creating Your Own Redirection
### Users could have up to nine open file descriptors in the shell.
