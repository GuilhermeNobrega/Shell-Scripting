#!/bin/bash

#echo $1
#echo $0
#$@ significa todos os parametros pasados pelo usuáario

CAMINHO_IMAGEM=/home/guilherme/shell/imagens-livros
for imagem in $@
do
    convert $CAMINHO_IMAGEM/$imagem.jpg $CAMINHO_IMAGEM/$imagem.png
done
# Nesse contexto, $imagem representa cada argumento (nome de imagem) passado para o script quando é executado.
# é uma variável local do loop e será atualizada a cada iteração, tomando o valor de cada argumento fornecido.
