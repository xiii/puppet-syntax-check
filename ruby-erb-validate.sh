#!/bin/bash
 
if [ $# -eq 0 ]
  then
    echo "Please provide an ERB file as argument eg $0 file.erb"
    exit 1
fi
 
erb -P -x -T '-' $1 | ruby -c
 
if [[ $? -ne 0 ]]
  then
    echo "$1 is not valid ERB"
    exit 1
  else
    echo "$1 is a valid ERB"
fi
