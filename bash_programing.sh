#!/bin/sh

day=$(date +%d-%m-%Y)
hour=$(date +%H:%M:%S)
host=$(hostname -s)
logn=$(logname)
langs=$LANG
only_hour=$(date +%H%M%S)


bp_condition(){
    if [ $# -eq 1 ]
    then
		  archive="$ling_ext$only_hour.$ling_ext"
		  echo -e $code > $archive
		  vim $archive
	  else
		  echo -e $code
	  fi
}

bp_sh(){
	code="#!/bin/sh\n\n# |-------------|-------------|\n# | \t$day $hour  |\n# |------------|-----------|\n# | \t$langs \t |\n# |-------------|-------------|\n# | $logn in $host |\n# |-------------|-------------|\n\necho"

	ling_ext="sh"

	bp_condition $code $ling_ext
}

bp_php(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="<?\n\n\t$info\n\n\tphpinfo();\n\n?>"

	ling_ext="php"

	bp_condition $code $ling_ext
}

bp_cpp(){ 
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"
  
  code="#include <iostream>\n\nint main(int argc, char 8argv[]){\n\t$info\n\n\treturn 0;\n}"

  ling_ext="cpp"

  bp_condition $code $ling_ext
}


bp_go(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="package main\n\nimport "fmt"\n\nfunc main(){\n\t$info\n}"

	ling_ext="go"

	bp_condition $code $ling_ext
}

bp_help(){
	nome="Bash_Programing"
	version="1.0.0"
	year="2020"
	author="Joao Roberto"
	url=""
	description="This is a simple set of scripts that returns a simple code structure for some languages, aiming to streamline code writing in text editors and simpler code editors, mainly for command line editors."


	echo -e "\n$nome - $version - $year\nAuthor: $author\n$url\n$description\n\nThe structure of the scripts is: bp \(from Bash Programing\) accompanied by an underline and the extension of the language you want to use, dot sh.\n\n\tEx:\n\tbp_py.sh\n\nYou can direct the output to a file\n\n\tEx:\n\tbp_py.sh \> example.py\n\nYou can also pass as argument a program, to open a file that will be created with an automatic name.\n\n\tEx:\n\tbp_py.sh vim"
}

bp_c(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="include <stdio.h>\n#include <stdlib.h>\n\nint main(int argc, char *argv[]){\n\t$info \n\n\treturn 0;\n}"

	ling_ext="c"

	bp_condition $code $ling_ext
}

bp_java(){
	info="/* $day $hour \n\t  $langs \n\t  $logn in $host  */"

	code="class MyClass{\n\n\t$info\n\n\tpublic static void main(String args[]){\n\n\t\tSystem.out.println();\n\n\t}\n}"

	ling_ext="java"

 	bp_condition $code $ling_ext
}

bp_py(){
	info_time="# $day $hour"
	info_usr="$logn in $host"

	code="#!usr/bin/env python\n# *-* coding: utf8 *-*\n\n# Script Author: [$info_usr]\n$info_time\n\n\ndef main():\n\tpass\n\n\nif __name__ == \"__main__\":\n\tmain()"

	ling_ext="py"

	bp_condition $code $ling_ext
}

bp_html(){
	info="<-- $day $hour $langs $logn in $host -->"

	code="<!DOCTYPE html>\n<html lang=\"${langs:0:5}\">\n\t<head>\n\t\t<meta charset="UTF-8">\n\t\t<title>$logn</title>\n\t</head>\n\n\t<body>\n\n\t\t$info\n\n\n\n\n\t</body>\n</html>" 

	ling_ext="html"

	bp_condition $code $ling_ext
}

bp_cs(){
	info="/*$day $hour\n\t$langs\n\t$logn in $host*/"

	code="using System;\n\nnamespace $logn\n\n\t$info\n\n\tclass Program{\n\n\t\tstatic void Main(string[] args){\n\n\t\t\tconsole.WriteLine();\n\n\t\t}\n\t}\n}"

	ling_ext="cs"

 	bp_condition $code $ling_ext
}

