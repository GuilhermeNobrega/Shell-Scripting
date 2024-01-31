#!/bin/bash
converte_imagem(){
cd /home/guilherme/Shell-Scripting/imagens-livros

if [ ! -d png ]; then
    mkdir png
else
    echo "=========================================="
    echo "Diretório já existe, arquivos adicionados"
    echo "=========================================="

fi

for imagem in *.jpg; do
    local imagemsemjpg=$(echo "$imagem" | awk -F . '{ print $1 }')
    convert "$imagem" png/"$imagemsemjpg".png
done
}
converte_imagem 2>erros.conversao.txt

if [ $? -eq 0 ]; then
    echo "=========================================="
    echo "Arquivos convertidos com sucesso"
    echo "=========================================="
else
    echo "=========================================="
    echo "Erros, arquivos não convertidos!"
    echo "=========================================="
fi
