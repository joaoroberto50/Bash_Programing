bp_rust(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="fn main() {\n    $info\n  \n}\n"

	ling_ext="rs"

	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
