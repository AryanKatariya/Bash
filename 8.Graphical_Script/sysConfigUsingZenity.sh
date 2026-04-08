#!/bin/bash

temp=$(mktemp -t temp.XXXXXX)
temp2=$(mktemp -t temp2.XXXXXX)

function kernel {
    uname -r > $temp
    zenity --text-info --title "Kernel" --filename=$temp --width 750 --height 300
}

function cpuman {
    cat /proc/cpuinfo | grep "vendor_id" | cut -d":" -f2 | head -1 > $temp
    zenity --text-info --title "CPU Manufacture" --filename=$temp --width 750 --height 300
}

function cores {
    cat /proc/cpuinfo | grep "cpu cores" | cut -d":" -f2 | head -1 > $temp
    zenity --text-info --title "CPU Cores" --filename=$temp --width 750 --height 300
}

function totalmem {
    free -mh | grep "Mem" | awk '{print $2}' > $temp
    zenity --text-info --title "Total Memory" --filename=$temp --width 750 --height 300
}

function freemem {
    free -mh | grep "Mem" | awk '{print $4}' > $temp
    zenity --text-info --title "Free Memory" --filename=$temp --width 750 --height 300
}

function freedisk {
    lsblk | grep "sda" | awk '{print $4}' | paste -sd " " | awk '{print $1}' > $temp
    zenity --text-info --title "Free Disk" --filename=$temp --width 750 --height 300
}


selection=$(zenity --list --radiolist --title "Select Enumeration Method" --column "Select" --column "Menu Item" FALSE "Automated Enumeration" FALSE "Manual Enumeration" FALSE "Exit")


case $selection in
	"Automated Enumeration")
		kernel
		cpuman
		cores
		totalmem
		freemem
		freedisk
		;;
	"Manual Enumeration")
		option=$(zenity --list --radiolist --title "Select Enumeration Method" --column "Select" --column "Menu Item" \
			FALSE "Kernel" \
			FALSE "CPU Manufacture" \
			FALSE "CPU Cores" \
			FALSE "Total Memory" \
			FALSE "Free Memory" \
			FALSE "Free Disk" \
			FALSE "Exit")
		
		case $option in
			"Kernel")
				kernel
				;;
			"CPU Manufacture")
				cpuman
				;;
			"CPU Cores")
				cores
				;;
			"Total Memory")
				totalmem
				;;
			"Free Memory")
				freemem
				;;
			"Free Disk")
				freedisk
				;;
			"Exit")
				exit 0
				;;
			*)
				zenity --error --text="Invalid selection."
                		;;
		esac
		;;
	"Exit")
		exit 0
		;;
	*)
		zenity --error --text="Invalid selection."
    		;;
esac

rm "$temp"
rm "$temp2"
