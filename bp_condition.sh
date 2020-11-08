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

