#!/bin/sh

day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG

info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

code="package main\n\nimport "fmt"\n\nfunc main(){\n\t$info\n}"

if [ $# -eq 1 ]
then
    archive="go$hour.go"
    echo -e $code > $archive
    vim $archive
else
    echo -e $code
fi
