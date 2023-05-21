#!/bin/bash

# constants
# API endpoint
URL="https://cpcli.cf.eu10.hana.ondemand.com"
# colors
BLUE="\033[1;34m"
NOCOLOR="\033[0m"

# global Variable

# load other scripts
. utility.sh

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