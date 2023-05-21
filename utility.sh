#!/bin/bash

# constants
EQUALSIGN="="

# Writing a = sign multiple times in a row
equalSign() {
    for (( i=0; i<$1; i++));
    do
        # echo without newline
        echo -n $EQUALSIGN
    done
    # newline
    echo
}
