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

comand=$( ps -e -o pid --sort -size | head -n 11 | grep [0-9] )
#echo -e "$comand\n"

for pids in $comand
do
  echo $(ps -p $pids -o comm )
done

echo -e "========================================================="
