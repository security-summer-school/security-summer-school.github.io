#!/bin/bash
PORT=8081

if [[ $1 == "local" ]]
then
    remote='http://127.0.0.1:'$PORT
elif [[ $1 == "remote" ]] && [[ -z $2 ]] 
then
    remote='http://141.85.224.118:'$PORT
else
    remote=$1':'$2
fi

# Eyes
echo "Start exploit for Eyes"
remote=$remote'/eyes/'
flag=$(curl -s $remote | grep -o "SSS_CTF{.*}")
echo "Flag is $flag"
echo "----------------------------"
