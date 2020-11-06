#!/bin/sh

day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG

info="<-- $day $hour $langs $logn in $host -->"

code="<!DOCTYPE html>\n<html lang=\"${langs:0:5}\">\n\t<head>\n\t\t<meta charset="UTF-8">\n\t\t<title>$logn</title>\n\t</head>\n\n\t<body>\n\n\t\t$info\n\n\n\n\n\t</body>\n</html>" 

if [ $# -eq 1 ]
then
    archive="html$hour.html"
    echo -e $code > $archive
    vim $archive
else
    echo -e $code
fi
