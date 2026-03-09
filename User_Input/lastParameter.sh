#!/bin/bash
# testing grabbing last parameter
#
echo Total parameter $#
echo The last parameter was ${$#}

params=$#
echo
echo The last parameter is $params
echo The last parameter is ${!#}
echo
