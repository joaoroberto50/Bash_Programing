bp_java(){
	info="/* $day $hour \n\t  $langs \n\t  $logn in $host  */"

	code="class MyClass{\n\n\t$info\n\n\tpublic static void main(String args[]){\n\n\t\tSystem.out.println();\n\n\t}\n}"

	ling_ext="java"

 	bp_condition $code $ling_ext
}
