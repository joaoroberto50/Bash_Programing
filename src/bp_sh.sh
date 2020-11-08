bp_sh(){
	code="#!/bin/sh\n\n# |-------------|-------------|\n# | \t$day $hour  |\n# |------------|-----------|\n# | \t$langs \t |\n# |-------------|-------------|\n# | $logn in $host |\n# |-------------|-------------|\n\necho"

	ling_ext="sh"

	bp_condition $code $ling_ext
}
