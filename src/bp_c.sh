bp_c(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="include <stdio.h>\n#include <stdlib.h>\n\nint main(int argc, char *argv[]){\n\t$info \n\n\treturn 0;\n}"

	ling_ext="c"

	bp_condition $code $ling_ext
}
