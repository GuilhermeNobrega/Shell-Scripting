#!/bin/bash

cd /home/guilherme/Shell-Scripting/imagens-livros

for imagem in *.jpg; do
    imagemsemjpg=$(echo "$imagem" | awk -F . '{ print $1 }')
    convert "$imagem" "$imagemsemjpg".png
done
