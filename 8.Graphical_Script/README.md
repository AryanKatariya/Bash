### The dialog package isnt installed in all Linux distributions by default. If its not installed by default, because of its popularity its almost always included in the software repository.
`sudo apt-get install dialog`

| **Widget**     | **Description**                                                         |
| -------------- | ----------------------------------------------------------------------- |
| `calendar`     | Provides a calendar from which to select a date                         |
| `checklist`    | Displays multiple entries where each entry can be turned on or off      |
| `form`         | Allows you to build a form with labels and text fields to be filled out |
| `fselect`      | Provides a file selection window to browse for a file                   |
| `gauge`        | Displays a meter showing a percentage of completion                     |
| `infobox`      | Displays a message without waiting for a response                       |
| `inputbox`     | Displays a single text form box for text entry                          |
| `inputmenu`    | Provides an editable menu                                               |
| `menu`         | Displays a list of selections from which to choose                      |
| `msgbox`       | Displays a message and requires the user to select an OK button         |
| `pause`        | Displays a meter showing the status of a specified pause period         |
| `passwordbox`  | Displays a single textbox that hides entered text                       |
| `passwordform` | Displays a form with labels and hidden text fields                      |
| `radiolist`    | Provides a group of menu items where only one item can be selected      |
| `tailbox`      | Displays text from a file in a scroll window using the tail command     |
| `tailboxbg`    | Same as `tailbox`, but operates in background mode                      |
| `textbox`      | Displays the contents of a file in a scroll window                      |
| `timebox`      | Provides a window to select an hour, minute, and second                 |
| `yesno`        | Provides a simple message with Yes and No buttons                       |

`dialog --widget parameters`
### where widget is the widget name as seen in above table, and parameters defines the size of the widget window and any text required for the widget.

`dialog --inputbox "Enter your age:" 10 20 2>age.txt`
### This command redirects the text entered in the textbox to the age.txt file.

## The msgbox widget
### The msgbox widget is the most common type of dialog box. It displays a simple message in a window and waits for the user to click an OK button before disappearing.

`dialog --msgbox text height width`

` $ dialog --title Testing --msgbox "This is a test" 10 20`
### --title parameter : For title of the messagebox

## The yesno widget
### The yesno widget allows the user to answer a yes/no question displayed in the window.

`dialog --title "Please answer" --yesno "R U ALIVE......?" 10 20`
### Result of echo $? is 0 for yes and 1 for no

## The inputbox widget
### The inputbox widget provides a simple textbox area for the user to enter a text string.

`dialog --inputbox "Enter your age:" 10 20 2>age.txt`
### Result of echo $? is 0 for OK and 1 for Cancel

## The textbox widget
### The textbox widget is a great way to display lots of information in a window.
### It produces a scrollable window containing the text from a fi le specifi ed in the parameters

`dialog --textbox /etc/passwd 15 45`


## The menu widget
### The menu widget allows you to create a window version of the text menu

`dialog --menu "Sys Admin Menu" 20 30 10 1 "Display disk space" 2 "Display users" 3 "Display memory usage" 4 "Exit" 2> test.txt`
### first parameter defines a title for the menu
### The next two parameters define the height and width of the menu window
### The third parameter defi nes the number of menu items that appear in the window at one time.

## The fselect widget
###  The fselect widget is extremely handy when working with filenames. Instead of forcing the user to type a filename, use the fselect widget to browse to the file location and select the file

`dialog --title "Select a file" --fselect $HOME/ 10 50 2>file.txt`
### The first parameter after the fselect option is the starting folder location used in the window.
### The fselect widget window consists of a directory listing on the left side, a file listing on the right side that shows all the files in the selected directory, and a simple textbox that contains the currently selected file or directory.

## The dialog options
| **Option**                 | **Description**                                                                                                  |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| `--add-widget`             | Proceeds to the next dialog unless Esc or the Cancel button has been pressed.                                    |
| `--aspect-ratio`           | Specifies the width/height aspect ratio of the window.                                                           |
| `--backtitle`              | Specifies a title to display on the background, at the top of the screen.                                        |
| `--begin x y`              | Specifies the starting location of the top-left corner of the window.                                            |
| `--cancel-label`           | Specifies an alternative label for the Cancel button.                                                            |
| `--clear`                  | Clears the display using the default dialog background color.                                                    |
| `--colors`                 | Embeds ANSI color codes in dialog text.                                                                          |
| `--cr-wrap`                | Allows newline characters in dialog text and forces a line wrap.                                                 |
| `--create-rc file`         | Dumps a sample configuration file to the specified file.                                                         |
| `--defaultno`              | Makes the default of a yes/no dialog "No".                                                                       |
| `--default-item`           | Sets the default item in a checklist, form, or menu dialog.                                                      |
| `--exit-label`             | Specifies an alternative label for the Exit button.                                                              |
| `--extra-button`           | Displays an extra button between the OK and Cancel buttons.                                                      |
| `--extra-label`            | Specifies an alternative label for the Extra button.                                                             |
| `--help`                   | Displays the dialog command help message.                                                                        |
| `--help-button`            | Displays a Help button after the OK and Cancel buttons.                                                          |
| `--help-label`             | Specifies an alternative label for the Help button.                                                              |
| `--help-status`            | Writes the checklist, radiolist, or form information after the help information in the Help button was selected. |
| `--ignore`                 | Ignores options that dialog does not recognize.                                                                  |
| `--input-fd fd`            | Specifies an alternative file descriptor, other than STDIN.                                                      |
| `--insecure`               | Changes the password widget to display asterisks when typing.                                                    |
| `--item-help`              | Adds a help column at the bottom of the screen for each tag in a checklist, radiolist, or menu for the tag item. |
| `--keep-window`            | Doesn’t clear old widgets from the screen.                                                                       |
| `--max-input size`         | Specifies a maximum string size for the input; default is 2048.                                                  |
| `--nocancel`               | Suppresses the Cancel button.                                                                                    |
| `--no-collapse`            | Doesn’t convert tabs to spaces in dialog text.                                                                   |
| `--no-kill`                | Places the tailboxbg dialog in background and disables SIGHUP for the process.                                   |
| `--no-label`               | Specifies an alternative label for the No button.                                                                |
| `--no-shadow`              | Doesn’t display shadows for dialog windows.                                                                      |
| `--ok-label`               | Specifies an alternative label for the OK button.                                                                |
| `--output-fd fd`           | Specifies an alternative output file descriptor other than STDERR.                                               |
| `--print-maxsize`          | Prints the maximum size of dialog windows allowed to the output.                                                 |
| `--print-size`             | Prints the size of each dialog window to the output.                                                             |
| `--print-version`          | Prints the dialog version to output.                                                                             |
| `--separate-output`        | Outputs the result of a checklist widget one line at a time with no quoting.                                     |
| `--separator string`       | Specifies a string that separates the output for each widget.                                                    |
| `--separate-widget string` | Specifies a string that separates the output for each widget.                                                    |
| `--shadow`                 | Draws a shadow to the right and bottom of each window.                                                           |
| `--single-quoted`          | Uses single quoting if needed for the checklist output.                                                          |
| `--sleep sec`              | Delays for the specified number of seconds after processing the dialog window.                                   |
| `--stderr`                 | Sends output to STDERR — the default behavior.                                                                   |
| `--stdout`                 | Sends output to STDOUT.                                                                                          |
| `--tab-correct`            | Converts tabs to spaces.                                                                                         |
| `--tab-len n`              | Specifies the number of spaces a tab character uses; default is 8.                                               |
| `--timeout sec`            | Specifies the number of seconds before exiting with an error code if no user input.                              |
| `--title title`            | Specifies the title of the dialog window.                                                                        |
| `--trim`                   | Removes leading spaces and newline characters from dialog text.                                                  |
| `--visit-items`            | Modifies the tab stops in the dialog window to include the list of items.                                        |
| `--yes-label`              | Specifies an alternative label for the Yes button.                                                               |

## Using the dialog command in a script(puttingAll.sh)

## Getting Graphic

### **The KDE environment**
### The KDE graphical environment includes the kdialog package by default.

### Command to check Desktop Environment
`echo $XDG_CURRENT_DESKTOP`

### The following is the format of the kdialog command:
`kdialog display-options window-options arguments`


| **Option**                            | **Description**                                                                         |
| ------------------------------------- | --------------------------------------------------------------------------------------- |
| `--checklist title [tag item status]` | A checklist menu, with status specifying if the item is checked or not.                 |
| `--error text`                        | Displays an error message box with the specified text.                                  |
| `--inputbox text [init]`              | Displays an input textbox where you can specify a default value using the `init` value. |
| `--menu title [tag item]`             | Displays a menu selection box with a title and a list of items identified by a tag.     |
| `--msgbox text`                       | Displays a simple message box with specified text.                                      |
| `--password text`                     | Displays a password input textbox where the input is hidden.                            |
| `--radiolist title [tag item status]` | Displays a radiolist menu, with status specifying if the item is selected or not.       |
| `--separate-output`                   | Returns items on separate lines for checklist and radiolist menus.                      |
| `--sorry text`                        | Displays a "Sorry" message box with the specified text.                                 |
| `--textbox file [width] [height]`     | Displays the contents of a file in a textbox, optionally specifying width and height.   |
| `--title title`                       | Specifies the title for the title bar area of the dialog window.                        |
| `--warningyesno text`                 | Displays a warning message box with Yes and No buttons.                                 |
| `--warningcontinuecancel text`        | Displays a warning message box with Continue and Cancel buttons.                        |
| `--warningyesnocancel text`           | Displays a warning message box with Yes, No, and Cancel buttons.                        |
| `--yesno text`                        | Displays a question box with Yes and No buttons.                                        |
| `--yesnocancel text`                  | Displays a question box with Yes, No, and Cancel buttons.                               |


### The checklist and radiolist widgets allows to define individual items in the lists and whether they are selected by default:
`$kdialog --checklist "Items I need" 1 "Toothbrush" on 2 "Toothpaste" off 3 "Hair brush" on 4 "Deodorant" off 5 "Slippers" off`

### **The GNOME environment**
The GNOME graphical environment supports two packages that can generate standard windows:
- gdialog
- zenity
  
| **Option**         | **Description**                                      |
| ------------------ | ---------------------------------------------------- |
| `--calendar`       | Displays a full month calendar.                      |
| `--entry`          | Displays a text entry dialog window.                 |
| `--error`          | Displays an error message dialog window.             |
| `--file-selection` | Displays a full pathname and filename dialog window. |
| `--info`           | Displays an informational dialog window.             |
| `--list`           | Displays a checklist or radiolist dialog window.     |
| `--notification`   | Displays a notification icon.                        |
| `--progress`       | Displays a progress bar dialog window.               |
| `--question`       | Displays a yes/no question dialog window.            |
| `--scale`          | Displays a scale dialog window.                      |
| `--text-info`      | Displays a textbox containing text.                  |
| `--warning`        | Displays a warning dialog window.                    |

`zenity --calendar`
selected date from the calendar is returns the value to STDOUT.

`zenity --file-selection`
Use the dialog window to browse to any directory location on the system