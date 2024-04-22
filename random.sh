#!/bin/bash
read -p "Digite o maior valor: " p1
read -p "Digite o menor valor: " p2

random=$(( $RANDOM % ($p1-$p2+1)+$p2 ))
#echo "$RANDOM"
echo "$random"

# Gera um número aleatório entre os valores $p2 e $p1 (inclusive).
# $RANDOM: Variável especial que gera um número aleatório inteiro entre 0 e 32.767 (inclusive).
# Parênteses duplos $(( ... )): Avaliam uma expressão aritmética.
# $p1 - $p2 + 1: Calcula o tamanho do intervalo entre $p2 e $p1.
# $RANDOM % ($p1 - $p2 + 1): Calcula o módulo de $RANDOM pelo tamanho do intervalo,
# resultando em um número entre 0 e o tamanho do intervalo (não incluindo o limite superior).
# + $p2: Adiciona o valor de $p2 para deslocar o número aleatório para o intervalo desejado.
# Assim, random recebe um número aleatório entre $p2 e $p1 (inclusive).

#Suponha que $p1 = 10 e $p2 = 5.
#O tamanho do intervalo é $p1 - $p2 + 1 = 10 - 5 + 1 = 6.
#O cálculo $RANDOM % 6 gera um número aleatório entre 0 e 5 (inclusive).
#Então, random = 5 + (número aleatório entre 0 e 5), que dá um número aleatório entre 5 e 10 (inclusive).
