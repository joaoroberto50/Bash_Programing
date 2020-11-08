bp_rust(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="fn main() {\n    $info\n  \n}\n"

	ling_ext="rs"

	bp_condition $code $ling_ext
}
