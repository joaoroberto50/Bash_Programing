bp_go(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="package main\n\nimport "fmt"\n\nfunc main(){\n\t$info\n}"

	ling_ext="go"

	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
