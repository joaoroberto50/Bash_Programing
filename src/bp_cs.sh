bp_cs(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="using System;\n\nnamespace $logn\n\n\t$info\n\n\tclass Program{\n\n\t\tstatic void Main(string[] args){\n\n\t\t\tconsole.WriteLine();\n\n\t\t}\n\t}\n}"

	ling_ext="cs"

 	bp_condition $code $ling_ext
}
