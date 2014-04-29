#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please provide a yaml file as argument eg $0 file.yaml"
    exit 1
fi

ruby -ryaml -e "YAML.parse(File.open('${1}'))" 

if [[ $? -ne 0 ]]
  then
    echo "$1 is not valid YAML"
    exit 1
  else
    echo "$1 is a valid YAML"
fi
