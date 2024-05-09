#!/bin/bash

echo -e "========================================================="

cat << "EOF"

 ____
|  _ \ _ __ ___   ___ ___  ___ ___  ___  ___
| |_) | '__/ _ \ / __/ _ \/ __/ __|/ _ \/ __|
|  __/| | | (_) | (_|  __/\__ \__ \ (_) \__ \
|_|   |_|  \___/ \___\___||___/___/\___/|___/

EOF



#read -p "Deseja ver quantos processos?: " processos

if [ ! -d log ];
then
  mkdir log
fi

function processos_memoria(){

comand=$( ps -e -o pid --sort -size | head -n 11 | grep [0-9] )
#echo -e "$comand\n"

for pid in $comand
do
  nome_processo=$( ps -p $pid -o comm= )
  echo -n $( date +%F,%H:%M:%S, ) >> log/$nome_processo.log
  tamanho_processo=$(ps -p $pid -o size | grep [0-9])
  calculo_memoria=$(($tamanho_processo/1024)) #Tirando de kilobytes para MB
  #echo "$calculo_memoria"
  echo "$calculo_memoria MB" >> log/$nome_processo.log
done

echo -e "========================================================="

}
processos_memoria

if [ $? -eq 0 ];
then
  echo "Arquivos salvos"
else
  echo "Erro!"
fi
