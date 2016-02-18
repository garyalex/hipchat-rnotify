#!/bin/bash

if [ ! -f /usr/local/etc/hctoken ]; then
    echo "No token!"
    exit 1
else
    TOKEN=`cat /usr/local/etc/hctoken`
fi

if (( $# > 0 )); then
    MESSAGE=$1
    while [ "$2" != "" ]; do
        shift
        MESSAGE="$MESSAGE $1"
    done
    /usr/local/hc/hipchat.pl -room "Support" -token $TOKEN -from "garyalex" -message "$MESSAGE" -colour "random"
else
    echo "No message!"
    exit 1
fi
