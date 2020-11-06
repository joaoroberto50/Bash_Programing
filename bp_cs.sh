#!/bin/sh

day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG

info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

code="using System;\n\nnamespace $logn\n\n\t$info\n\n\tclass Program{\n\n\t\tstatic void Main(string[] args){\n\n\t\t\tconsole.WriteLine();\n\n\t\t}\n\t}\n}"

if [ $# -eq 1 ]
then
    archive="cs$hour.cs"
    echo -e $code > $archive
    vim $archive
else
    echo -e $code
fi
