bp_cs(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="using System;\n\nnamespace $logn\n\n\t$info\n\n\tclass Program{\n\n\t\tstatic void Main(string[] args){\n\n\t\t\tconsole.WriteLine();\n\n\t\t}\n\t}\n}"

	ling_ext="cs"

 	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
