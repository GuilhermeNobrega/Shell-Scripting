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
#grep servindo para pegar apenas valores númericos, entre 0-9
#Questões tempo: echo $( ps -p $pids -o lstart )


comand=$( ps -e -o pid --sort -size | head -n 11 | grep [0-9] )
#echo -e "$comand\n"

for pids in $comand
do
  echo $(ps -p $pids -o comm )
done

echo -e "========================================================="


#ps -o pid,comm,%cpu,%mem

pid: O ID do processo.
comm: O nome do comando ou programa em execução.
%cpu: O uso percentual da CPU por esse processo.
%mem: O uso percentual de memória por esse processo.
