#!/bin/bash

#COLORS
red="\x1b[38;5;209m"
blue="\e[0;34m"
cyan="\033[;36m"
pur="\x1b[38;5;99m"
purple="\e[0;35m"
yellow="\e[33m"

strike="\e[9m"
underline="\e[4m"
bold=$(tput bold)
bi="\e[3m\e[1m"
normal=$(tput sgr0)
right=$(printf '\xE2\x9C\x94')
end="\e[0m"

banner() {
echo ""
ban=$(python3 banner.py)
echo -e "${blue}$ban ${end}${bold}${yellow}bySHADY${normal}"
echo ""
echo -e "${pur}++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++${end}"
}

Usage() {
        echo -e $red"${underline}GITSCRAPY$end$red : Tool will display all data URLs from GitHub including XML, JSON, Java, Text, Kotlin, Ruby, Markdown, CSV, Python, PHP, GO, YAML, Elixir, C++, JavaScript, HTML & many more . . ."$end
        echo ""
        echo -e "$red Usage: ./gitapp [-d/--domain] domain.tld [-s/--silent]"$end
        echo -e "\t $red Options:"$end
        echo -e "\t $red -d/--domain: Target Domain: That will search for the target and find the data on GitHub"$end
        echo -e "\t $red -s / --silent: Only raw output"$end
        echo -e "\t $cyan$bi Examples:"$end
        echo -e "\t \t $cyan bash ./gitapp -d domain.tld"$end
        echo -e "\t \t $cyan bash ./gitapp -d domain.tld -s"$end
        exit 
}

banner
Usage
