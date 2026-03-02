# Question 1: Number Repeater(range_printer.sh)
Write a script that:

Asks user for a number n
Prints numbers from 1 to n

Then prints:
Whether the number is Even or Odd

Expected concepts:
for loop
arithmetic %
if condition inside loop

# Question 2: Password Checking System(login_attempts.sh)
Write a script that:

Stored password = 1234
User gets 3 attempts
If correct → “Access Granted”

If wrong:
Show attempts left

After 3 failures → “Account Locked”

# Question 2: Advance Password Checking System(secure_login.sh)
If user enters wrong password 3 times → lock account

After lock:
Ask security question
If answer correct → reset attempts
Else permanent lock

# while vs until
A while loop will keep executing as long as the condition is true.
and
An until loop will keep executing as long as the condition is false.

# Nested Loop(NestingLoop.sh)
The outer loop should run 3 times, and for each iteration of the outer loop, the inner loop should also run 3 times

# While Nested Loop(whileNesting.sh)
Write a bash script that places a for loop inside a while loop. The while loop should iterate as long as a variable (e.g., var1) is greater than or equal to 0, starting from 5. For each iteration of the while loop, the script should execute a for loop that runs 2 times (from 1 to 2). The inner loop should compute and print the product of var1 and the current for loop counter (var2).

# Until and While Nested Loop(whileUntil.sh)
Write a bash script that uses an until loop to iterate as long as a variable (var1) is not equal to 0. Inside this until loop, place a while loop that runs 4 times (from 1 to 4). In the while loop, compute and print the result of dividing var1 by the current value of var2 (from 1 to 4), with the result rounded to 4 decimal places.

# Looping on File Data(fileLooping.sh)
The task is to iterate through the /etc/passwd file, process each line, and then split the line into separate components (fields) using a colon (:) as the delimiter.

# Controlling the Loop
The break command is a simple way to escape a loop in progress.Use the break 
command to exit any type of loop, including while and until loops.

