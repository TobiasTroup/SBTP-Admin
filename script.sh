#!/bin/bash

# constants
# API endpoint
URL="https://cpcli.cf.eu10.hana.ondemand.com"
# colors
BLUE="\033[1;34m"
NOCOLOR="\033[0m"

# global Variable
runNumber=0

# Writing a = sign multiple times in a row
equalSign() {
    local lengthEqualSign=runNumber
    for (( i=0; i<lengthEqualSign; i++));
    do
        # echo without newline
        echo -n "="
    done
    echo ""
}

startScreen () {
    echo ""
    # Reading a file
    startDescription=`cat .data/greetingWindow.txt`
    # number of the equal signs to print out
    runNumber=32
    equalSign
    # interpretation of escaped characters
    echo -e "${BLUE}$startDescription${NOCOLOR}"
    equalSign
    echo ""
}

login() {
    read -p "[1] Username: " username
    read -s -p "[2] Password: " password
}

checkLogin() {
    echo
    login
}

main() {
    startScreen
    checkLogin
}

main