#!/bin/sh

day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG

code="#!/bin/sh\n\n# |-------------|-------------|\n# | \t$day $hour  |\n# |------------|-----------|\n# | \t$langs \t |\n# |-------------|-------------|\n# | $logn in $host |\n# |-------------|-------------|\n\necho"

if [ $# -eq 1 ]
then
    archive="sh$hour.sh"
    echo -e $code > $archive
    vim $archive
else
    echo -e $code
fi
