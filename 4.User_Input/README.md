# Grabbing all data(grabbingData.sh)
Notice that on the surface, both variables produce the same output, showing all the command line parameters provided at once.
The $* variable treated all the parameters as a single parameter, while the $@ variable treated each parameter separately. 

# Using the getopt command(getoptCommand.sh)
It reorganizes the command line parameters to make parsing them in your 
script easier.  
\$ getopt ab:cd -a -b test1 -cd test2 test3
-a -b test1 -c -d -- test2 test3

\$ getopt ab:cd -a -b test1 -cde test2 test3
getopt: invalid option -- e
-a -b test1 -c -d -- test2 test3

\$ getopt -q ab:cd -a -b test1 -cde test2 test3
-a -b 'test1' -c -d -- 'test2' 'test3'

# Standardizing Options
| Option | Description                                        |
| ------ | -------------------------------------------------- |
| `-a`   | Shows all objects                                  |
| `-c`   | Produces a count                                   |
| `-d`   | Specifies a directory                              |
| `-e`   | Expands an object                                  |
| `-f`   | Specifies a file to read data from                 |
| `-h`   | Displays a help message for the command            |
| `-i`   | Ignores text case                                  |
| `-l`   | Produces a long format version of the output       |
| `-n`   | Uses a non-interactive (batch) mode                |
| `-o`   | Specifies an output file to redirect all output to |
| `-q`   | Runs in quiet mode                                 |
| `-r`   | Processes directories and files recursively        |
| `-s`   | Runs in silent mode                                |
| `-v`   | Produces verbose output                            |
| `-x`   | Excludes an object                                 |
| `-y`   | Answers yes to all questions                       |
