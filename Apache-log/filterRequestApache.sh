#!/bin/bash

function help(){
    echo "=============================="
    echo "[GET]  [POST]  [PUT]  [DELETE]"
    echo "=============================="
}
help

read -p "Type your request: " request
request_upper=$( echo "$request" | tr 'a-zA-Z' 'A-Za-z')
#[:lower:][:upper:] [:upper:][:lower:] [a-zA-Z] [A-Za-z]
case $request_upper in
    "GET"|"POST"|"PUT"|"DELETE")
        cat apache.log | grep -a "$request_upper"
        ;;
    *)
        echo "Requisição não reconhecida: $request_upper"
        ;;
esac
