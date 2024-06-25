#!/bin/bash

kernel=$(uname -r)
CPUMAN=$(cat /proc/cpuinfo | grep "vendor_id" | cut -d":" -f2)
CORES=$(cat /proc/cpuinfo | grep "cpu cores" | cut -d":" -f2)
TOTALMEMORY=$(free -mh | grep "Mem" | awk '{print $2}')
FREEMEMORY=$(free -mh | grep "Mem" | awk '{print $4}')
FREEDISK=$(lsblk | grep "sda" | awk '{print $4}' | paste -sd " " | awk '{print $1}')
