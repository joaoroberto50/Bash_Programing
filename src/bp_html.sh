bp_html(){
	info="<-- $day $hour $langs $logn in $host -->"

	code="<!DOCTYPE html>\n<html lang=\"${langs:0:5}\">\n\t<head>\n\t\t<meta charset="UTF-8">\n\t\t<title>$logn</title>\n\t</head>\n\n\t<body>\n\n\t\t$info\n\n\n\n\n\t</body>\n</html>" 

	ling_ext="html"

	bp_condition $code $ling_ext
}
