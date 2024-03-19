#!/bin/bash
salvar=("")
function execution(){
while true
do
    read -p "Qual arquivo você deseja verificar o código checksum?: " file_name
    checksum=$(sha256sum "$file_name" | cut -d ' ' -f1)
    salvar+=("$checksum")
    #echo "${salvar[@]}"

    echo "=========================="
    for values in ${salvar[@]}
    do
    echo -e "\e$values\e"
    done
    echo "=========================="
    if [ "${salvar[0]}" != "${salvar[1]}" ];
    then
        echo "Valores iguais, nada alterado."
        echo "${salvar[@]}"
    else
        echo "Valores diferentes"
        #echo "${salvar[@]}"
    fi
done
    }
execution
