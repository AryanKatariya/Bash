#! /bin/bash
f1()
{
 local x=10
 echo "Inside function x value: $x"
}
x=100
f1
echo "outside function x value : $x"

