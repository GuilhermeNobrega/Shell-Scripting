#!/bin/bash

soma=0

while [ "$#" -gt 0 ]; do
    soma=$((soma + $1))
    shift
done

echo "A soma dos argumentos é: $soma"

: ' Explicação: o uso do shift muda os valores da direita para esquerda, dos parametros passados no terminal, por exemplo: $1 = 5   $2 = 10 ( o 10 é passado para o primeiro argumento)

nesse caso se digitarmos no terminal:

bash shift.sh 8 2 4 5
[1] significa argumento 1 (primeiro passado)

[1=8] [2=2] [3=4] [4=5]  após shift = [1=2] [2=4] [3=5] e assim até terminar

8 + 2 + 4 + 5 = 19
'
#ou..

#!/bin/bash

count=0
number=$#
while [ $count -lt $number ]
do
    ((count++))
    token="$"$count
    shift
    echo "$count e $token"
done
