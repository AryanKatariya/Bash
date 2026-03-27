## The test Numeric Comparisons
| Operator | Meaning          |
| -------- | ---------------- |
| `-eq`    | equal            |
| `-ne`    | not equal        |
| `-gt`    | greater than     |
| `-lt`    | less than        |
| `-ge`    | greater or equal |
| `-le`    | less or equal    |	
## The test String Comparisons
|  Comparison |  Description |
|---|---|
|  str1 = str2  |  Checks if str1 is the same as string str2 |
|  str1 != str2 |  Checks if str1 is not the same as str2 |
|  str1 < str2 |  Checks if str1 is less than str2 |
|       str1 > str2       |  Checks if str1 is greater than str2 |
|             -n str1            |  Checks if str1 has a length greater than zero |
|                -z str1                |  Checks if str1 has a length of zero |

## The test File Comparisons
| **Comparison**    | **Description**                                                                     |
| ----------------- | ----------------------------------------------------------------------------------- |
| `-d file`         | Checks if the file exists and is a directory.                                       |
| `-e file`         | Checks if the file exists.                                                          |
| `-f file`         | Checks if the file exists and is a regular file (not a directory or symbolic link). |
| `-r file`         | Checks if the file exists and is readable.                                          |
| `-s file`         | Checks if the file exists and is not empty (has a size greater than 0).             |
| `-w file`         | Checks if the file exists and is writable.                                          |
| `-x file`         | Checks if the file exists and is executable.                                        |
| `-O file`         | Checks if the file exists and is owned by the current user.                         |
| `-G file`         | Checks if the file exists and has the same group as the current user.               |
| `file1 -nt file2` | Checks if `file1` is newer than `file2` (modified time comparison).                 |
| `file1 -ot file2` | Checks if `file1` is older than `file2` (modified time comparison).                 |

# Problem 1(divisiblity.sh):

Write a script that:
Takes a number as input.
If number is:
Divisible by 3 → print "Divisible by 3"
Divisible by 5 → print "Divisible by 5"
Divisible by both → print "Divisible by 3 and 5"
Otherwise → print "Not divisible by 3 or 5"

Must use:
if
elif
else
modulus %

# Problem 2(number_compare.sh):

Write a script that:
Takes three numbers
Prints:
Largest number
Smallest number
Whether all three are equal
Whether exactly two are equal

# Problem 3(triangle_validator.sh):

Take three numbers as input.
Determine:
Whether they can form a valid triangle
If valid, determine the type of triangle

Triangle Rule
Three sides a, b, c form a valid triangle if and only if:
a + b > c
a + c > b
b + c > a
All three conditions must be TRUE.

# Problem 4(date_validator.sh):

The script should:
Take input:
Day (dd)
Month (mm)
Year (yyyy)

Validate:
Whether the date is valid
Whether the year is a leap year
If valid, print the season of the month

Step 1 – Validate Basic Ranges
Month must be between 1–12
Day must be positive
Year must be positive

If invalid → print:
Invalid date
and stop.

Step 2 – Check Leap Year
A year is a leap year if:
(year % 400 == 0)
OR
(year % 4 == 0 AND year % 100 != 0)

If leap → print:
Leap Year
Else:
Not a Leap Year

Step 3 – Validate Days in Month
Use if/elif/else logic:
Months with 31 days:
1, 3, 5, 7, 8, 10, 12
Months with 30 days:
4, 6, 9, 11
February:
29 days if leap year
28 days otherwise
If day exceeds allowed days → Invalid date

Step 4 – Print Season (Only if date valid)
Dec, Jan, Feb → Winter
Mar, Apr, May → Spring
Jun, Jul, Aug → Summer
Sep, Oct, Nov → Autumn

# Problem 5(bank_withdrawal_system.sh)
Banking Withdrawal System

Write a script that:
Takes:
Account balance
Withdrawal amount

Rules:
If withdrawal ≤ 0 → Invalid amount
If withdrawal > balance → Insufficient funds
If withdrawal > 50,000 → Require manager approval
If withdrawal > 10,000 → Apply 2% transaction fee
Otherwise normal withdrawal

After processing:
Print remaining balance
Print whether account is:
Low balance (< 1000)
Healthy
Premium (> 1,00,000)