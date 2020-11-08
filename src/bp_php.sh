bp_php(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="<?\n\n\t$info\n\n\tphpinfo();\n\n?>"

	ling_ext="php"

	bp_condition $code $ling_ext
}
