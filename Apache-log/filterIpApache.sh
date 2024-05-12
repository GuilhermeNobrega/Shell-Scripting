#!/bin/bash

read -p "Type the ip: " ip

#[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}
# A ideia é: [0-9] algarismos permitidos, 0..infinito / {1,3} seja um ou até 3 algarismos / separação com .
#([0-9]{1,3}\.){3}[0-9]{1,3}: {3} a seção anterior é repetida 3 vezes / o \. significa escapar o ponto, padrão de escape (Isso acontece porque colocamos o ponto em nossa expressão regular, porém não realizamos o escape dele, dizendo que literalmente a divisão entre esses intervalos precisa ser somente o ponto)
#Word Boundary, simbolizado por \b, delimitador de início e fim (nao pode ter nada no início ou fim: ex a, b, etc.)

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $ip =~ $regex ]];
then
    cat apache.log | grep $ip
    if [ $? -ne 0 ];
    then
        echo "Ip não se encontra no arquivo apache.log"
    fi
else
    echo "Formato não é válido"
fi
