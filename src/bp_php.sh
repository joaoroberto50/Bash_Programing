bp_php(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="<?php\n\n\t$info\n\n\tphpinfo();\n\n?>"

	ling_ext="php"

	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
