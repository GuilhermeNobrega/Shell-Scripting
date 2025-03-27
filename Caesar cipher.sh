#!/bin/bash
# Começamos definindo: faremos com todas as letras do alfabeto, de a-z e maisculas.
# Na segunda parte, temos: esse 'd' significa que o a vai mudar para d, logo entendendo que mudou 3 posições e terá que fazer isso no resto da string
# O a-c significa: quando for para o z, ele vai ter que recomeçar, de certa forma, sabe?

cat << EOF
    [1] - 1 para por uma string
    [1] - 2 para por um arquivo
EOF
echo -e "\n"
read -p "Digite seu valor : " valor
if [ $valor == 1 ];
then
    read -p "Digite a string: " string
    echo "$string" | tr 'a-zA-Z' 'd-za-cD-ZA-C'

elif [ $valor == 2 ];
then
    read -p "Digite o nome do arquivo: " arquivo
    cat "$arquivo" | tr 'a-zA-Z' 'd-za-cD-ZA-C'
else
    echo "Valor digitado não aceito.."
fi
#d-za-c
#D-ZA-C


#!/bin/bash

array=({a..z})
arrayuper=({A..Z})
re='^[0-9]+$'
read -p "Digite sua frase para descriptografar (CESAR) : " texto
if [[ $texto =~ $re ]];then
echo "Erro";
exit
fi
echo "${array[@]}"
#valores=$(echo "$texto" | tr c-za-bC-ZA-B a-zA-Z)
#echo "$valores"
for ((c=1; c<=26; c++))
do
    letra="${array[$c]}"
    letraupper="${arrayuper[$c]}"
    letra_anterior="${array[$((c-1))]}"
    letraupper_anterior="${arrayuper[$((c-1))]}"
    echo "$texto" | tr "$letra-za-$letra_anterior$letraupper-ZA-$letraupper_anterior" "a-zA-Z"
done

#Other way to do..

array=({a..z})
arrayuper=({A..Z})
re='^[0-9]+$'
read -p "Digite sua frase para descriptografar (CESAR) : " texto
if [[ $texto =~ $re ]];then
echo "Erro";
exit
fi
echo "${array[@]}"
#valores=$(echo "$texto" | tr c-za-bC-ZA-B a-zA-Z)
#echo "$valores"
for c in {1..26}
do
    letra="${array[$c]}"
    letraupper="${arrayuper[$c]}"
    letra_anterior="${array[$((c-1))]}"
    letraupper_anterior="${arrayuper[$((c-1))]}"
    echo "$texto" | tr "$letra-za-$letra_anterior$letraupper-ZA-$letraupper_anterior" "a-zA-Z"
    ((c++));
done

