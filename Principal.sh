#!/bin/bash

cd /home/guilherme/shell/imagens-livros
if [ ! -d png ]; then
    mkdir png
fi

for imagem in *.jpg
do
    #convert $imagem $imagem.png
    convert "$imagem" png/"${imagem%.jpg}.png"
done
# Esse script tem por objetivo converter TODAS as imagens do diretório para png, sem uso de parâmetros.
# Retiramos o $imagem.jpg pois no for ele passa o nome completo do arquivo, sendo desnecessário por no comando convert pois ele está adicionando mais
# um .jpg ao nome do arquivo original, que já está passando o nome completo. Por esse motivo, retiramos, para não atrapalhar o nome do arquivo original
