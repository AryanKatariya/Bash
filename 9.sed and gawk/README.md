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

### **Substituting flags**

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
The substitute command works fi ne in replacing text in multiple lines, but by default, it 
replaces only the fi rst occurrence in each line.

```
$ cat data2.txt
This is a test of the test script.
This is the second test of the test script.
$

$ sed 's/test/trial/' data2.txt
This is a trial of the test script.
This is the second trial of the test script.
$
```

`s/pattern/replacement/flags`

- A number, indicating the pattern occurrence for which new text should be substituted.
- g, indicating that new text should be substituted for all occurrences of the existing text.
- p, indicating that the contents of the original line should be printed.
- w file, which means to write the results of the substitution to a file.

```
$ sed 's/test/trial/2' data2.txt
This is a test of the trial script.
This is the second test of the trial script.
$

$ sed 's/test/trial/g' data2.txt
This is a trial of the trial script.
This is the second trial of the trial script.
$

$ cat data3.txt
This is a test line.
This is a different line.
$

$ sed -n 's/test/trial/p' data3.txt
This is a trial line.
$

$ sed 's/test/trial/w test.txt' data3.txt
This is a trial line.
This is a different line.
$

$ cat test.txt
This is a trial line.
$
```

### **e**

#### Using multiple editor commands in the command line

```
$ sed -e 's/brown/green/; s/dog/cat/' data1.txt
The quick green fox jumps over the lazy cat.
The quick green fox jumps over the lazy cat.
The quick green fox jumps over the lazy cat.
The quick green fox jumps over the lazy cat.
$

$ sed -e '
> s/brown/green/
> s/fox/elephant/
> s/dog/cat/' data1.txt
The quick green elephant jumps over the lazy cat.
The quick green elephant jumps over the lazy cat.
The quick green elephant jumps over the lazy cat.
The quick green elephant jumps over the lazy cat.
$
```

### **f**

#### Reading editor commands from a file
To run a lots of sed commands store them in a separate file. Use the -f option to specify the file in the sed command

```
$ cat script1.sed
s/brown/green/
s/fox/elephant/
s/dog/cat/
$

$ sed -f script1.sed data1.txt
The quick green elephant jumps over the lazy cat.
The quick green elephant jumps over the lazy cat.
The quick green elephant jumps over the lazy cat.
The quick green elephant jumps over the lazy cat.
$
```




