#PRIMEIRA VERSÃO

#!/bin/bash

#echo $1
#echo $0
convert /home/guilherme/shell/imagens-livros/algoritmos.jpg  /home/guilherme/shell/imagens-livros/algoritmos.png

outro jeito de fazer, passando um parametro
convert /home/guilherme/shell/imagens-livros/$1.jpg  /home/guilherme/shell/imagens-livros/$1.png

#SEGUNDA VERSÃO MELHORADA:

CAMINHO_IMAGEM=/home/guilherme/shell/imagens-livros

convert $CAMINHO_IMAGEM/$1.jpg $CAMINHO_IMAGEM/$1.png
convert $CAMINHO_IMAGEM/$2.jpg $CAMINHO_IMAGEM/$2.png
