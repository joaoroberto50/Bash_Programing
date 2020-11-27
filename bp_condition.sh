bp_condition(){
    if [ $1 -eq '-' ]
    then
		  archive="$ling_ext$only_hour.$ling_ext"
		  echo -e $code > $archive
		  $2 $archive
	  else
		  echo -e $code
	  fi
}

