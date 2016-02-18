#!/bin/bash

if (( $# > 0 )); then
    MESSAGE=$1
    while [ "$2" != "" ]; do
        shift
        MESSAGE="$MESSAGE $1"
    done
    /usr/local/hc/hipchat.pl -room "Support" -token "xJdr9kxIGsMkPsEhninWMvXB8YwdnwjcaR2wgCH3" -from "garyalex" -message $1
else
    echo "No message!"
    exit 1
fi
