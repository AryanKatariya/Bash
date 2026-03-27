Write a Bash script that processes an employee’s salary with the following rules:

🔹Step 1 – Take Input
Prompt the user to enter:
Basic Salary (basic)
Bonus Percentage (bonus\_percent)
Tax Percentage (tax\_percent)


🔹Step 2 – Calculate Salary Components
calculate:
Bonus Amount
bonus=(basic×bonus\_percent)/100

Gross Salary
gross=basic+bonus

Tax Amount
tax=(gross×tax_percent)/100

Net Salary
net=gross−tax

🔹Step 3 – Incentive Rule (New Logic)
Now apply this condition:
If net > 50000
Calculate 5% incentive on the current net salary
incentive=(net×5)/100

Add the incentive to net salary
final_net=net+incentive
Else
final_net = net

🔹Step 4 – Even/Odd Check
Check whether final_net is:
EVEN → print "Final Net Salary is EVEN"
ODD → print "Final Net Salary is ODD"

🔹Step 5 – Output
Display:
Bonus
Gross Salary
Tax
Net Salary (before incentive)
Incentive (if applied)
Final Net Salary
Even/Odd result

![1.png](./6b0cb5025570d1a1bc3e95f24e7d0bc6.png "1.png")
![2.png](./a3f4ba870484e1c0ebd3217b1b08a77e.png "2.png")


