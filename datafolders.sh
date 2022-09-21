#!/bin/bash



function recursive_mkdir () {
  echo ""
  for i in $1
  do
    # IF Dir
    if [ -d $i ];
    then
      echo "${i/*.\//}" 
      echo ""
      mkdir -p "$2""${i/*.\//}"

      recursive_mkdir "$i/*" $2

    fi

  #( cd $i && docker compose up -d --build )
  done
}




recursive_mkdir "./*" "/opt/dockerdata/"
