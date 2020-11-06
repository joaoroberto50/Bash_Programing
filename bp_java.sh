#!/bin/sh

day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG

info="/* $day $hour \n\t  $langs \n\t  $logn in $host  */"

code="class MyClass{\n\n\t$info\n\n\tpublic static void main(String args[]){\n\n\t\tSystem.out.println();\n\n\t}\n}"

if [ $# -eq 1 ]
then
    archive="java$hour.java"
    echo -e $code > $archive
    vim $archive
else
    echo -e $code
fi
