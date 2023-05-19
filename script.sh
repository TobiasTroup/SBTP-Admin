#!/bin/bash

url="https://cpcli.cf.eu10.hana.ondemand.com"

startScreen () {
    BLUE="\033[1;34m"
    NOCOLOR="\033[0m"
    echo ""
    echo "================================================================="
    echo -e "${BLUE} SAP Technology Platform - Command Line Interface Administration${NOCOLOR}"
    echo "================================================================="
    echo ""
}

startScreen