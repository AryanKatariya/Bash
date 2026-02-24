| Operator | Meaning          |
| -------- | ---------------- |
| `-eq`    | equal            |
| `-ne`    | not equal        |
| `-gt`    | greater than     |
| `-lt`    | less than        |
| `-ge`    | greater or equal |
| `-le`    | less or equal    |

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