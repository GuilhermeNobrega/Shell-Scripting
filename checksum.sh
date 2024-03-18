#!/bin/bash
salvar=("")
function execution(){
read -p "Qual arquivo você deseja verificar o código checksum?: " file_name


checksum=$(sha256sum "$file_name" | cut -d ' ' -f1)
salvar+="$checksum"
echo "${salvar[@]}"

echo "=========================="
echo "$checksum"
echo "=========================="
}
execution
