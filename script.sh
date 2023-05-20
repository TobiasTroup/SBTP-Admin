#!/bin/bash

# constants
# API endpoint
URL="https://cpcli.cf.eu10.hana.ondemand.com"
# colors
BLUE="\033[1;34m"
NOCOLOR="\033[0m"

# global Variable

# Writing a = sign multiple times in a row
equalSign() {
    for (( i=0; i<$1; i++));
    do
        # echo without newline
        echo -n "="
    done
    echo
}

startScreen () {
    echo
    # Reading a file
    startDescription=`cat .data/greetingWindow.txt`
    # equal signs to print out
    equalSign 32
    # interpretation of escaped characters
    echo -e "${BLUE}$startDescription${NOCOLOR}"
    # equal signs to print out
    equalSign 32
    echo
}

login() {
    read -p "[1] Username: " username
#    echo -n "[2] Password: "
    read -s -p "[2] Password: " password
    echo
}

checkLogin() {
    echo
    login
}

alreadyLoggedIn() {
    return 0
}

main() {
    startScreen
    alreadyLoggedIn
}

main