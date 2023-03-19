#!/bin/bash
# writer.sh script file as described


# check if all parameters are specified
if ! [[ $# -eq 2 ]]
then
   echo "usage: $0 <file_to_write_to> <string-to-write>"
   exit 1
fi

filesdir=$(dirname "$1")
#filename=$(basename $1)
# echo "path $filesdir to contain file $filename"

mkdir -p "$filesdir"
if ! [ $? -eq 0 ]
then
   echo "$0: error 1"
   exit 1
fi

# echo "writing $2 into $1"
echo "$2" > "$1"

if ! [ $? -eq 0 ]
then
   echo "$0: error 2"
   exit 1
fi

exit 0


