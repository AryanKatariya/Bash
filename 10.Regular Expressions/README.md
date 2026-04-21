A regular expression is a pattern template user define that a Linux utility uses to fi lter text.

A Linux utility (such as the sed editor or the gawk program) matches the regular expression pattern against data as that data fl ows into the utility.

![alt text](image.png)

## Types of regular expressions
1. POSIX Basic Regular Expression (BRE) Engine:
- Used by most Linux utilities (like grep, sed).
- It has a simpler set of symbols, but some utilities (like sed) only support a subset for speed reasons.

2. POSIX Extended Regular Expression (ERE) Engine:
- Found in programming languages (like Python, Perl, and Java) and tools like gawk.
- Provides more advanced pattern symbols and special shortcuts for common patterns (like digits or words).

**a. Plain Text Matching:**
You can match specific words in the text using a simple pattern.

`echo "This is a test" | sed -n '/test/p'`

This matches the word "test" and prints the line.

If the word doesn't exist, no output is printed.

`echo "This is a test" | sed -n '/trial/p'`

**b. Case Sensitivity:**
BRE patterns are case-sensitive.

`echo "This is a test" | sed -n '/this/p'`

This will not match because "this" is lowercase, but:

`echo "This is a test" | sed -n '/This/p'`

This matches because the case is correct.

**c. Matching Substrings:**
The pattern doesn't need to match an entire word; it can match a part of the string.

`echo "The books are expensive" | sed -n '/book/p'`

This will match because "book" appears in "books."

**d. Spaces in Patterns:**
Spaces in patterns are treated like any other character, so they must match exactly.

`echo "This is line number 1" | sed -n '/ber 1/p'`

Matches because the pattern includes the space and "ber 1."

If there’s no exact match, the regular expression will fail:

`echo "This is line number1" | sed -n '/ber 1/p'`

**e. Multiple Spaces:**
You can match multiple contiguous spaces using the regular expression.

`echo "This is  a line with too many spaces." | sed -n '/  /p'`

This will match lines with two spaces.

## Special Characters
In regular expressions, certain characters have special meanings and cannot be used directly as text unless user escape them.

`. * [ ] ^ $ { } \ + ? | ( )`

***Examples of Escaping Special Characters:***

**a.Dollar sign ($):**
To search for a dollar sign in a string, you escape it with a backslash:

```
$ echo "The cost is $4.00" | sed -n '/\$/p'
The cost is $4.00
```
**b.Backslash ():**
Since the backslash itself is a special character, if you want to search for it, you need to escape it with another backslash:

```
$ echo "\ is a special character" | sed -n '/\\/p'
\ is a special character
```
**c.Forward Slash (/)**
Although the forward slash / is not a special regex character, it is used as a delimiter in sed commands, causing errors if used directly in patterns. You can escape it:

```
$ echo "3 / 2" | sed -n '/\//p'
3 / 2
```

## Anchor characters

### **Starting at the beginning**
The caret anchor character(^) checks for the pattern at the beginning of each new line of data.

```
$ cat data1
This is a test line.
this is another test line.
A line that tests this feature.
Yet more testing of this

$ sed -n '/^this/p' data3
this is another test line.
$
```
### **Looking for the ending**
The opposite of looking for a pattern at the start of a line is looking for it at the end of a line. The dollar sign ($) special character defines the end anchor.

```
$ cat data1
this is a test of using both anchors
I said this is a test
this is a test
I'm sure this is a test.

$sed -n '/this$/p' data1.txt
$
```

## **Combining anchors**
Combine both the start and end anchor on the same line.

```
$ cat data2
this is a test of using both anchors
I said this is a test
this is a test
I'm sure this is a test.

$ sed -n '/^this is a test$/p' data2
this is a test
$
```

By combining both anchors in a pattern with no text, user can filter blank lines from the data stream.

```
$ cat data3
This is one test line.

This is another test line.

$ sed '/^$/d' data3
This is one test line.
This is another test line.
$
```

## **The dot character**
The dot special character is used to match any single character except a newline character.

```
$ cat data4.txt
This is a test of a line.
The cat is sleeping.
That is a very nice hat.
This test is at line four.
at ten o'clock we'll go home.

$ sed -n '/.at/p' data4.txt
The cat is sleeping.
That is a very nice hat.
This test is at line four.
$
```

## **Character classes**
The dot special character is great for matching a character position against any character, but what if you want to limit what characters to match? This is called a character class in regular expressions.


```
$ cat data4.txt
This is a test of a line.
The cat is sleeping.
That is a very nice hat.
This test is at line four.
at ten o'clock we'll go home.

$ sed -n '/[ch]at/p' data4.txt
The cat is sleeping.
That is a very nice hat.
$
```

You can use more than one character class in a single expression:

```
$ echo "Yes" | sed -n '/[Yy][Ee][Ss]/p'
Yes
$ echo "yEs" | sed -n '/[Yy][Ee][Ss]/p'
yEs
$ echo "yeS" | sed -n '/[Yy][Ee][Ss]/p'
yeS
$
```
Character classes dont have to contain just letters; user can use numbers in them as well:
```
$ cat data5
This line doesn't contain a number.
This line has 1 number on it.
This line a number 2 on it.
This line has a number 4 on it.

$ sed -n '/[0123]/p' data5
This line has 1 number on it.
This line a number 2 on it.
$
```

One extremely popular use for character classes is parsing words that might be misspelled, such as data entered from a user form.

```
$ cat data6.txt
I need to have some maintenence done on my car.
I'll pay that in a seperate invoice.
After I pay for the maintenance my car will be as good as new.

$ sed -n '/maint[ea]n[ae]nce/p /sep[ea]r[ea]te/p' data6.txt
I need to have some maintenence done on my car.
I'll pay that in a seperate invoice.
After I pay for the maintenance my car will be as good as new.
$
```
## **Negating character classes**
Reverse the effect of a character class,Instead of looking for a character contained in the class, you can look for any character thats not in the class.

```
$ cat data4.txt
This is a test of a line.
The cat is sleeping.
That is a very nice hat.
This test is at line four.
at ten o'clock we'll go home.
$

$ sed -n '/[^ch]at/p' data4.txt
This test is at line four.
$
```
By negating the character class, the regular expression pattern matches any character thats neither a c nor an h, along with the text pattern.

## **Using ranges**
User can use a range of characters within a character class by using the dash symbol. Just specify the first character in the range, a dash, and then the last character in the range. 

The regular expression includes any character thats within the specified character range, according to the character set used by the Linux system.

```
cat data7.txt
60633
46201
a8392
45902
1839a
18a92
48647
4569987
9999

sed -n '/^[0-9][0-9][0-9][0-9][0-9]$/p' data7.txt
60633
46201
45902
48647
```

# Special character classes

| **Character Class** | **Description**                                               |
| ------------------- | ------------------------------------------------------------- |
| `[[:alpha:]]`       | Matches any alphabetical character (A–Z, a–z)                 |
| `[[:alnum:]]`       | Matches any alphanumeric character (0–9, A–Z, a–z)            |
| `[[:blank:]]`       | Matches a space or Tab character                              |
| `[[:digit:]]`       | Matches a numerical digit (0–9)                               |
| `[[:lower:]]`       | Matches any lowercase alphabetical character (a–z)            |
| `[[:print:]]`       | Matches any printable character                               |
| `[[:punct:]]`       | Matches a punctuation character                               |
| `[[:space:]]`       | Matches any whitespace character (space, Tab, NL, FF, VT, CR) |
| `[[:upper:]]`       | Matches any uppercase alphabetical character (A–Z)            |

```
$ cat data8.txt
abc
abc123
This is, a test
This is a test
$

$sed -n '/[[:alpha:]]/p' data8.txt
abc
abc123
This is, a test
This is a test
$

$sed -n '/[[:digit:]]/p' data8.txt
abc123
$

$sed -n '/[[:punct:]]/p' data8.txt
This is, a test
$

$sed -n '/[[:blank:]]/p' data8.txt
This is, a test
This is a test
$

$sed -n '/[[:lower:]]/p' data8.txt
abc
abc123
This is, a test
This is a test
$

$ sed -n '/[[:upper:]]/p' data8.txt
This is, a test
This is a test
$
```

## **The asterisk**
The asterisk (*) means that the preceding character or pattern can appear zero or more times in the text for the pattern to match.

```
$ echo "ik" | sed -n '/ie*k/p'
ik
$ echo "iek" | sed -n '/ie*k/p'
iek
$ echo "ieek" | sed -n '/ie*k/p'
ieek
$ echo "ieeek" | sed -n '/ie*k/p'
ieeek
$ echo "ieeeek" | sed -n '/ie*k/p'
ieeeek
```

The asterisk can be used to accommodate variations or misspellings, such as in British and American English spelling:

```
$ echo "I'm getting a color TV" | sed -n '/colou*r/p'
I'm getting a color TV
$ echo "I'm getting a colour TV" | sed -n '/colou*r/p'
I'm getting a colour TV
```

The asterisk allows you to accept commonly misspelled words or variations:

```
$ echo "I ate a potatoe with my lunch." | sed -n '/potatoe*/p'
I ate a potatoe with my lunch.
$ echo "I ate a potato with my lunch." | sed -n '/potatoe*/p'
I ate a potato with my lunch.
```

When combined, .* can match any number of any characters. It's often used to match text between two strings:

```
$ echo "this is a regular pattern expression" | sed -n '/regular.*expression/p'
this is a regular pattern expression
```

User can also use * with a character class (e.g., [ae]), allowing a specific set of characters to appear zero or more times

```
$ echo "bt" | sed -n '/b[ae]*t/p'
bt
$ echo "bat" | sed -n '/b[ae]*t/p'
bat
$ echo "bet" | sed -n '/b[ae]*t/p'
bet
$ echo "btt" | sed -n '/b[ae]*t/p'
btt
$ echo "baat" | sed -n '/b[ae]*t/p'
baat
$ echo "baaeeet" | sed -n '/b[ae]*t/p'
baaeeet
$ echo "baeeaeeat" | sed -n '/b[ae]*t/p'
baeeaeeat
$ echo "baakeeet" | sed -n '/b[ae]*t/p'
```

## **Extended Regular Expressions**
The core of the issue is that sed, by default, uses Basic Regular Expressions (BRE), while gawk uses Extended Regular Expressions (ERE).

The BRE vs. ERE Divide
The most immediate difference is how special characters are treated.
sed (Basic RE): Treats characters like |, +, and ? as literal text unless they are escaped with a backslash (e.g., \+).\
gawk (Extended RE): Treats these as meta-characters by default. You don't need to escape them to trigger their special powers.

### ***The question mark***
The question mark indicates that the preceding character can appear zero or one time, but thats all. It doesnt match repeating occurrences of the character:

```
$ echo "bt" | gawk '/be?t/{print $0}'
bt
$ echo "bet" | gawk '/be?t/{print $0}'
bet
$ echo "beet" | gawk '/be?t/{print $0}'
$
$ echo "beeet" | gawk '/be?t/{print $0}'
$
```

If the e character doesnt appear in the text, or as long as it appears only once in the text, the pattern matches.

As with the asterisk, user can use the question mark symbol along with a character class
```
$ echo "bt" | gawk '/b[ae]?t/{print $0}'
bt
$ echo "bat" | gawk '/b[ae]?t/{print $0}'
bat
$ echo "bot" | gawk '/b[ae]?t/{print $0}'
$
$ echo "bet" | gawk '/b[ae]?t/{print $0}'
bet
$ echo "baet" | gawk '/b[ae]?t/{print $0}'
$
$ echo "beat" | gawk '/b[ae]?t/{print $0}'
$
$ echo "beet" | gawk '/b[ae]?t/{print $0}'
$
```

If zero or one character from the character class appears, the pattern match passes.However, if both characters appear, or if one of the characters appears twice, the pattern match fails.

### ***The plus sign***
The plus sign is another pattern symbol thats similar to the asterisk, but with a different twist than the question mark.

The plus sign indicates that the preceding character can appear one or more times, but must be present at least once. The pattern doesnt match if the character is not present:

```
$ echo "beeet" | gawk '/be+t/{print $0}'
beeet
$ echo "beet" | gawk '/be+t/{print $0}'
beet
$ echo "bet" | gawk '/be+t/{print $0}'
bet
$ echo "bt" | gawk '/be+t/{print $0}'
$
```
If the e character is not present, the pattern match fails.

The plus sign also works with character classes, the same way as the asterisk and question mark do:

```
$ echo "bt" | gawk '/b[ae]+t/{print $0}'
$
$ echo "bat" | gawk '/b[ae]+t/{print $0}'
bat
$ echo "bet" | gawk '/b[ae]+t/{print $0}'
bet
$ echo "beat" | gawk '/b[ae]+t/{print $0}'
beat
$ echo "beet" | gawk '/b[ae]+t/{print $0}'
beet
$ echo "beeat" | gawk '/b[ae]+t/{print $0}'
beeat
$
```
## **Using braces**
Curly braces are available in ERE to allow you to specify a limit on a repeatable regular expression.

This is often referred to as an interval.Interval can be expressed in two formats:
- m: The regular expression appears exactly m times.
- m,n: The regular expression appears at least m times, but no more than n times.

```
$ echo "bt" | gawk --re-interval '/be{1}t/{print $0}'
$
$ echo "bet" | gawk --re-interval '/be{1}t/{print $0}'
bet
$ echo "beet" | gawk --re-interval '/be{1}t/{print $0}'
$
```

Often, specifying the lower and upper limit comes in handy:

```
$ echo "bt" | gawk --re-interval '/be{1,2}t/{print $0}'
$
$ echo "bet" | gawk --re-interval '/be{1,2}t/{print $0}'
bet
$ echo "beet" | gawk --re-interval '/be{1,2}t/{print $0}'
beet
$ echo "beeet" | gawk --re-interval '/be{1,2}t/{print $0}'
$
```

The interval pattern match also applies to character classes:

```
$ echo "bt" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
$
$ echo "bat" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
bat
$ echo "bet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
bet
$ echo "beat" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
beat
$ echo "beet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
beet
$ echo "beeat" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
$
$ echo "baeet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
$
$ echo "baeaet" | gawk --re-interval '/b[ae]{1,2}t/{print $0}'
$
```
## **The pipe symbol**
The pipe symbol allows users to specify two or more patterns that the regular expression engine uses in a logical OR formula when examining the data stream.

```
$ echo "The cat is asleep" | gawk '/cat|dog/{print $0}'
The cat is asleep
$ echo "The dog is asleep" | gawk '/cat|dog/{print $0}'
The dog is asleep
$ echo "The sheep is asleep" | gawk '/cat|dog/{print $0}'
$
$ echo "He has a hat." | gawk '/[ch]at|dog/{print $0}'
He has a hat.
$
```

## **Grouping expressions**
Regular expression patterns can also be grouped by using parentheses. When you group a regular expression pattern, the group is treated like a standard character.

```
$ echo "Sat" | gawk '/Sat(urday)?/{print $0}'
Sat
$ echo "Saturday" | gawk '/Sat(urday)?/{print $0}'
Saturday
$
```
The grouping of the “urday” ending along with the question mark allows the pattern to match either the full day name Saturday or the abbreviated name Sat.

# Regular Expressions in Action

## **Counting directory files**
Shell script that counts the executable files that are present in the directories defined in PATH environment variable.

## **Validating a phone number**
Often, regular expressions are used to validate data to ensure that data is in the correct format for a script.

Validating a list of phone numbers that customers have entered into an online form. The phone numbers can be formatted in one of the following ways:

(123)456-7890

(123) 456-7890

123-456-7890

123.456.7890

Script that will correctly validate these phone numbers.

`gawk --re-interval '/^\(?[2-9][0-9]{2}\)?[ |\-|\.]?[0-9]{3}[ |\-|\.]?[0-9]{4}/{print $0}'`
- *^* :
  - Anchors the pattern to the start of the line.

- *\\(?* :
    - Optionally matches an opening parenthesis (. The ? means it is optional.

- *[2-9][0-9]{2}* :
  - This matches a three-digit number where:The first digit is a number between 2 and 9 (to avoid invalid area codes starting with 0 or 1).
  - The next two digits are any digits between 0 and 9.

- *\\)?* :
  - Optionally matches a closing parenthesis ).
  
- *( |-|\. )* :
  - To match spaces, hyphens, or periods which is optional due to ?.

- *[0-9]{3}* :
  - Matches exactly three digits, which represents the first part of the local number.

- *( |-|\.)* :
  - Matches a space, hyphen, or period, which are common separators in phone numbers.
  
- *[0-9]{4}* :
  - Matches exactly four digits, which represents the second part of the local number.

## **Parsing an e-mail address**
Writing a regular expression to validate email addresses. The basic form of an email address is as follows:

$$username@hostname$$

*Username*
    
    The username part can contain alphanumeric characters and the following special characters:

    Dot (.)
    Dash (-)
    Plus sign (+)
    Underscore (_)

*Hostname*
    
    The hostname part consists of one or more domain names and a server name. These domain names must adhere to strict rules:

    Alphanumeric characters
    Dot (.)
    Underscore (_)

The domain and server names are separated by dots, and the server name comes first, followed by subdomains (if any), and finally, the top-level domain name, which should not have a trailing dot.

`gawk --re-interval '/^([a-zA-Z0-9_\-\+]+(?:[a-zA-Z0-9_\-\+\.]*[a-zA-Z0-9_\-\+])?)@([a-zA-Z0-9_\-]+\.[a-zA-Z0-9_\-]+(?:\.[a-zA-Z]{2,})*)$/ { print $0 }'`

