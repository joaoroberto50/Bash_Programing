bp_py(){
	info_time="# $day $hour"
	info_usr="$logn in $host"

	code="#!usr/bin/env python\n# *-* coding: utf8 *-*\n\n# Script Author: [$info_usr]\n$info_time\n\n\ndef main():\n\tpass\n\n\nif __name__ == \"__main__\":\n\tmain()"

	ling_ext="py"

	bp_condition $code $ling_ext
}
