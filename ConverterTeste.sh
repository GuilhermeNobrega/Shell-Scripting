#!/bin/bash
cd /home/guilherme/shell/imagens-livros
for imagem in "$@"
do
    convert "$imagem" "$imagem.png"
done

#!/bin/bash

cd /home/guilherme/shell/imagens-livros

for imagem in "$@"
do
    convert "$imagem" "${imagem%.jpg}.png"
done

#{imagem%.jpg} Isso significa: remove a parte final (sufixo) da string armazenada na variável imagem que corresponde ao padrão .jpg
# %:Indica que a operação de substituição será feita no final da string.
# As chaves ${imagem} se referem ao conteudo da variavel imagem
