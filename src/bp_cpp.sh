bp_cpp(){ 
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="#include <iostream>\n\nint main(int argc, char const *argv[]) {\n\t$info\n\n\treturn 0;\n}"

	ling_ext="cpp"

	bp_condition $code $ling_ext
}
