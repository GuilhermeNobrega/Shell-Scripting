#!/bin/bash

cd /home/guilherme/Shell-Scripting
quantidade=$( ls -1 | wc -l )
if [ $quantidade -le 1 ];then
    echo "Tem $quantidade .."
else
    echo "Tem $quantidade diretorio(s).. pouco"
fi
