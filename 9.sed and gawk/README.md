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

```
cat data5.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is line number 4.
This is line number 1 again.
This is text you want to keep.
This is the last line in the file.
This is line number 5.

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

### **-e**

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

### **-f**

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
## **Using addresses**

There are two forms of line addressing in the sed editor:
- A numeric range of lines
- A text pattern that fi lters out a line

```
$ sed '2s/dog/cat/' data1.txt
The quick brown fox jumps over the lazy dog
The quick brown fox jumps over the lazy cat
The quick brown fox jumps over the lazy dog
The quick brown fox jumps over the lazy dog
$

# The sed editor modified the text only in line two per the address specified.3

$ sed '2,3s/dog/cat/' data1.txt
The quick brown fox jumps over the lazy dog
The quick brown fox jumps over the lazy cat
The quick brown fox jumps over the lazy cat
The quick brown fox jumps over the lazy dog
$

$ sed '2,$s/dog/cat/' data1.txt
The quick brown fox jumps over the lazy dog
The quick brown fox jumps over the lazy cat
The quick brown fox jumps over the lazy cat
The quick brown fox jumps over the lazy cat
$
To apply a command to a group of lines starting at some point within the text,but continuing to the end of the text,use the special address, the dollar sign.

```
## **Using text pattern filters**
The sed editor allows you to specify a text pattern that it uses to fi lter lines for the command.

`/pattern/command`

For example,to change the default shell for only the user Samantha.

```
$ grep Samantha /etc/passwd
Samantha:x:502:502::/home/Samantha:/bin/bash

$ sed '/Samantha/s/bash/csh/' /etc/passwd
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
[...]
Christine:x:501:501:Christine B:/home/Christine:/bin/bash
Samantha:x:502:502::/home/Samantha:/bin/csh
Timothy:x:503:503::/home/Timothy:/bin/bash
$
```
## **Grouping commands**

```
$ sed '2{
> s/fox/elephant/
> s/dog/cat/
> }' data1.txt
The quick brown fox jumps over the lazy dog.
The quick brown elephant jumps over the lazy cat.
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
$

$ sed '3,${
> s/brown/green/
> s/lazy/active/
> }' data1.txt
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
The quick green fox jumps over the active dog.
The quick green fox jumps over the active dog.
$
```
## **Deleting lines**
```
$ sed '3d' data6.txt
This is line number 1.
This is line number 2.
This is line number 4.
$

# or by a specifi c range of lines:
$ sed '2,3d' data6.txt
This is line number 1.
This is line number 4.
$

# or by using the special end-of-file character:
$ sed '3,$d' data6.txt
This is line number 1.
This is line number 2.
$

# The pattern-matching feature of the sed editor also applies to the delete command:
$ sed '/number 1/d' data6.txt
This is line number 2.
This is line number 3.
This is line number 4.
$
# The sed editor removes the line containing text that matches the pattern you specify.
```

```

# The first pattern you specify “turns on” the line deletion, and the second pattern “turns off” the line deletion.

$ sed '/1/,/3/d' data4.txt
This is line number 4.
$

$ cat data5.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is line number 4.
This is line number 1 again.
This is text you want to keep.
This is the last line in the file.
$

# The second occurrence of a line with the number 1 in it triggered the delete command again, deleting the rest of the lines in the data stream, because the stop pattern wasn't recognized.

$ sed '/1/,/5/d' data5.txt
$
# Of course, the other obvious problem occurs if you specify a stop pattern that never appears in the text:
```

## **Inserting and appending text**
- The insert command (i) adds a new line before the specified line.
- The append command (a) adds a new line after the specified line.

```
sed '[address]command\
new line'
```
```
$ echo "Test Line 2" | sed 'i\Test Line 1'
Test Line 1
Test Line 2
$
```

when you use the append command, the text appears after the data stream text

```
$ echo "Test Line 2" | sed 'a\Test Line 1'
Test Line 2
Test Line 1
$
```
Insert before a specific line number (line 3)
```
$ sed '3i\
> This is an inserted line.' data6.txt
This is line number 1.
This is line number 2.
This is an inserted line.
This is line number 3.
This is line number 4.
```

Append after a specific line number (line 3)
```
$ sed '3a\
> This is an appended line.' data6.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is an appended line.
This is line number 4.
```

## **Changing lines**
The change command allows you to change the contents of an entire line of text in the data stream.
```
cat data5.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is line number 4.
This is line number 1 again.
This is text you want to keep.
This is the last line in the file.
This is line number 5.

$ sed '3c\This is a changed line of text.' data5.txt
This is line number 1.
This is line number 2.
This is a changed line of text.
This is line number 4.
$
```

## **Transforming characters**
The transform command (y) is the only sed editor command that operates on a single character.

`[address]y/inchars/outchars/`

The first character in inchars is converted to the first character in outchars. The second character in inchars is converted to the second character in outchars.

```
$ cat data6.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is line number 4.
This is line number 1 again.
This is yet another line.
This is the last line in the file.
$
```

## **Printing revisited**

### *Printing lines*

Three commands that can be used to print information from the data stream:
- The p command to print a text line
- The equal sign (=) command to print line numbers
- The l (lowercase L) command to list a line

The most common use for the print command is printing lines that contain matching text from a text pattern:

```
$ cat data4.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is line number 4.
$

$ sed -n '/number 3/p' data6.txt
This is line number 3.
$
```
- -n: Suppresses automatic printing of all lines (so we only print lines explicitly matched by a command).
- /number 3/: Matches any line containing "number 3".
- p: Tells sed to print the matched lines.

### *Printing line numbers*
The equal sign command prints the current line number for the line within the data stream.

```
$ cat data1.txt
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
The quick brown fox jumps over the lazy dog.
$

$ sed '=' data1.txt
1
The quick brown fox jumps over the lazy dog.
2
The quick brown fox jumps over the lazy dog.
3
The quick brown fox jumps over the lazy dog.
4
The quick brown fox jumps over the lazy dog.
$

$ sed -n '/number 4/{=;p}' data4.txt
4
This is line number 4.
$

```
- -n: Suppresses automatic printing of lines.
- /number 4/: Matches lines containing "number 4".
- =: Prints the line number of the match.
- p: Prints the content of the line.

### *Listing lines*
The list command (l) allows you to print both the text and nonprintable characters in a data stream.

```
$ cat data7.txt
This    line    contains        tabs.
$

$ sed -n 'l' data7.txt
This\tline\tcontains\ttabs.$
$
```
- The tab character locations are shown with the \t nomenclature.
- The dollar sign at the end of the line indicates the newline character.

## **Using files with sed**
The substitution command contains flags that allow you to work with files.

### *Writing to a file*
The w command is used to write lines to a file.

`[address]w filename`

```
$ sed '1,2w test.txt' data6.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is line number 4.
$

$ cat test.txt
This is line number 1.
This is line number 2.
$
```

To not display the output on STDOUT,use the -n option for the sed command.
```
$ cat data11.txt
Blum, R       Browncoat
McGuiness, A  Alliance
Bresnahan, C  Browncoat
Harken, C     Alliance
$

$ sed -n '/Browncoat/w Browncoats.txt' data11.txt
$
$ cat Browncoats.txt
Blum, R       Browncoat
Bresnahan, C  Browncoat
$
```

### *Reading data from a file*
The read command (r) allows you to insert data contained in a separate file.

`[address]r filename`

```
cat data9.txt
This is an added line.
This is the second added line.

cat data4.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is line number 4.

sed '3r data9.txt' data4.txt
This is line number 1.
This is line number 2.
This is line number 3.
This is an added line.
This is the second added line.
This is line number 4.
```
