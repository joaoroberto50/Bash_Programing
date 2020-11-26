bp_condition(){
    if [ $# -eq 3 ]
    then
		  archive="$ling_ext$only_hour.$ling_ext"
		  echo -e $code > $archive
		  $1 $archive
	  else
		  echo -e $code
	  fi
}

