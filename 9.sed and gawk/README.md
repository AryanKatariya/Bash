### sed and gawk are simple command-line tools that allow users to easily format, insert, modify, or delete text elements in files automatically.

## sed
- sed editor, which is a stream editor used for editing data streams based on predefined rules.
- Unlike interactive text editors (like vim), sed processes data by reading it line by line, applying commands to each line, and then outputting the modified data.
  
The sed editor operates faster than interactive editors because it processes the data in a single pass. The basic syntax for using sed is :

```sed options script file```

- -e script: Adds commands specified in the script.
- -f file: Adds commands from a file.
- -n: Suppresses automatic output, waiting for a print command.

sed reads its input from STDIN (Standard Input), which is the default stream for receiving data in a Unix-like system.

**s**
The s command substitutes a second text string for the first text string pattern specified between the forward slashes.

```
$ cat data1.txt
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
$
$ sed 's/dog/cat/' data1.txt
The quick brown fox jumps over the lazy cat.
The quick brown fox jumps over the lazy cat.
The quick brown fox jumps over the lazy cat.
The quick brown fox jumps over the lazy cat.
$
```

