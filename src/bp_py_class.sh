bp_py_class(){
	info_time="# $day $hour"
	info_usr="$logn in $host"

	code="# *-* coding: utf8 *-*\n\n# Script Author: [$i    nfo_usr]\n$info_time\n\n\nclass MyClass(object):\n\t__init__(self):\n\tpass"

	ling_ext="py"

	if [ $# -eq 1 ]
 	then
		var=1
		bp_condition $var $1 $code $ling_ext
	else
		bp_condition $code $ling_ext
	fi
}
