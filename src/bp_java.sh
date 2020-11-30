bp_java(){
	info="/* $day $hour \n\t  $langs \n\t  $logn in $host  */"

	code="class MyClass{\n\n\t$info\n\n\tpublic static void main(String args[]){\n\n\t\tSystem.out.println();\n\n\t}\n}"

	ling_ext="java"

 	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
