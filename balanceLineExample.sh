#!/bin/bash

# Defina os arquivos de entrada
file1="file1.txt"
file2="file2.txt"

# Descritor de arquivo para ler file1 e file2
exec 3<"$file1"
exec 4<"$file2"

# Leia a primeira linha de cada arquivo
read -u 3 line1 #read from file descriptor
read -u 4 line2 #read from file descriptor

# Loop até que um dos arquivos termine
while [[ -n "$line1" && -n "$line2" ]]; do #-n enquanto tiver linhas para ler
    if [[ "$line1" == "$line2" ]]; then
        echo "Encontrado em ambos: $line1"
        read -u 3 line1
        read -u 4 line2
    elif [[ "$line1" < "$line2" ]]; then
        read -u 3 line1
    else
        read -u 4 line2
    fi
done

# Fechar descritores de arquivo
exec 3<&-
exec 4<&-
