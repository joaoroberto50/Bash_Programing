bp_sh(){
	code="#!/bin/sh\n\n# |-------------|-------------|\n# | \t$day $hour  |\n# |------------|-----------|\n# | \t$langs \t |\n# |-------------|-------------|\n# | $logn in $host |\n# |-------------|-------------|\n\necho"

	ling_ext="sh"

	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
