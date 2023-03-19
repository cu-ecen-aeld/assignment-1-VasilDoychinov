#!/bin/bash
# finder script file as described

# check if all parameters are specified
if [ $# -eq 2 ]
then
   filesdir=$1
   searchstr=$2
   
   if [ -d "$filesdir" ]
   then
      _X_=$(find $filesdir/ -type f | wc -l)
      _Y_=$(grep $searchstr $filesdir/* -r | wc -l)
      echo "The number of files are $_X_ and the number of matching lines are $_Y_"
      exit 0
   else
       echo "$filesdir is a NOT a directory"
       exit  1
   fi
else
   echo "usage: $0 <path-to-search-in> <string-to-search-for>"
   exit 1
fi

