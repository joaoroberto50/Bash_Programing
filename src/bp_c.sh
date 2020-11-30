bp_c(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="include <stdio.h>\n#include <stdlib.h>\n\nint main(int argc, char *argv[]){\n\t$info \n\n\treturn 0;\n}"

	ling_ext="c"
	
  	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
