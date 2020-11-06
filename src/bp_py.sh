#!/bin/sh
 
day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG

info_time="# $day $hour"
info_usr="$logn in $host"

code="#!usr/bin/env python\n# *-* coding: utf8 *-*\n\n# Script Author: [$info_usr]\n$info_time\n\n\ndef main():\n\tpass\n\n\nif __name__ == \"__main__\":\n\tmain()"

if [ $# -eq 1 ]
then
    archive="py$hour.py"
    echo -e $code > $archive
    vim $archive
else
    echo -e $code
fi
