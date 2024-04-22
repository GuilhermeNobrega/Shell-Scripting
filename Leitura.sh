#!/bin/bash

function leitura()
{
ls
read -p "Digite nome do arquivo: " filename
if [[ ! -f $filename ]];then
    echo "Arquivo $filename não encontrado"
fi

while read line
do

    echo "$line"
done < $filename
}
leitura
