#!/bin/bash

cd /home/guilherme/shell/imagens-livros/
quantidade=$( ls -1 | wc -l )
echo "Tem ${quantidade} arquivos no diretório"
