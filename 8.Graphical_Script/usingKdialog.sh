#!/bin/bash
# using kdialog to create a menu
temp=$(mktemp -t temp.XXXXXX)
temp2=$(mktemp -t temp2.XXXXXX)
function diskspace {
   df -k > $temp
   kdialog --textbox $temp 1000 10
}
function whoseon {
   who > $temp
   kdialog --textbox $temp 500 10
}
function memusage {
   cat /proc/meminfo > $temp
   kdialog --textbox $temp 300 500
}
while [ 1 ]
do
