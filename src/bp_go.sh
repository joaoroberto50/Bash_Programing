bp_go(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="package main\n\nimport "fmt"\n\nfunc main(){\n\t$info\n}"

	ling_ext="go"

	bp_condition $code $ling_ext
}
