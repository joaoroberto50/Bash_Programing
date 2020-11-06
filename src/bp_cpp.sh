#!/bin/sh
 
day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG
 
info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

code="#include <iostream>\n\nint main(int argc, char 8argv[]){\n\t$info\n\n\treturn 0;\n}"

if [ $# -eq 1 ]
then
    archive="cpp$hour.cpp"
    echo -e $code > $archive
    vim $archive
else
    echo -e $code
fi

