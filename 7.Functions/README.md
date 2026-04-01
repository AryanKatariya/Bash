### Writing the same blocks of code over and over in script is tiresome.Functions are blocks of script code that user assign a name to and reuse anywhere in your code.

## Creating a function
#### There are two ways to define functions in Bash:
#### Using the function keyword:
`function name {
    commands
}`
- name: The name of the function.
- commands: A series of commands the function will execute when called.

#### Using parentheses (without function keyword):
`name() {
    commands
}`
- name: The function name.
- commands: The list of commands the function will run.

## 1. Uisng function keyword(usingFunction.sh)
### 1.2 The original definition of the func1 function works fi ne, but after the second definition of the func1 function, any subsequent uses of the function use the second definition.

## 2. Returning a Value
### The default exit status
### 2.1 By default, the exit status of a function is the exit status returned by the last command in the function.

### 2.2 The return command allows you to specify a single integer value to define the function exit status
#### Input = 200:
#### Doubling the value: 200 * 2 = 400.
#### Since 400 is greater than 255, bash calculates the exit status as 400 % 256 = 144. This is why an exit code of 144.

### 2.3 Using function output

## 3. Using Variables in Functions
### 3.1 Passing parameters to a function(variables.sh)
#### The function can then retrieve the parameter values using the parameter environment variables.

### 3.2 badfunc1 is called in script doesn't take input directly from the command line arguments.Therefore no output.(variables1.sh)
#### variables2.sh correct way to use the cli arguments inside function.

### 3.3 Handling variables in a function
#### Global variables are variables that are valid anywhere within the shell script.
#### Any variables that the function uses internally can be declared as local variables.

## 4. Array Variables and Functions
### 4.1 Passing arrays to functions
#### "${myarray[*]}" : This expands the entire array as a single string, where the elements are joined by the first character of the IFS(Internal Field Separator), which is typically a space.
#### For example, if myarray=(a b c), then "${myarray[*]}" expands to: "a b c" (all elements are joined into a single string).

#### "${myarray[@]}" : This expands each element of the array as a separate quoted string, preserving the individual elements.
#### For example, if myarray=(a b c), then "${myarray[@]}" expands to: "a" "b" "c" (each element is treated as a separate argument).

### 4.2 Returning arrays from functions
#### Passing an array variable from a function back to the shell script.

## 5. Creating a Library
#### The bash shell allows to create a library file(myfuncs) for your functions and then reference that single library file in as many scripts as needed(library.sh).
#### The source command has a shortcut alias, called the dot operator. To source the myfuncs library file in a shell script, use:
`. ./myfuncs`

## 6. Downloading and installing
### shtool is a utility for shell scripting that provides a set of helpful tools for writing portable shell scripts.
`wget ftp://ftp.gnu.org/gnu/shtool/shtool-2.0.8.tar.gz`

`tar -zxvf shtool-2.0.8.tar.gz`

### Building the library
`./confifgure`

`make`
