#!/bin/bash

# Define a variável como um número inteiro
BASE_16_NUM=47295

# Representar o valor em hexadecimal
# O comando `printf` com o formato `%x` converte `BASE_16_NUM` para hexadecimal.
printf "%x\n" $BASE_16_NUM

# Representar o valor em binário
# O comando `printf` com o formato `%b` converte `BASE_16_NUM` para binário,
# mas este formato em particular é usado para representar escape sequences e pode não retornar o resultado esperado.
# Como alternativa, podemos converter para binário usando outra abordagem:
# Usar `bc` para converter o número para binário
echo "ibase=10; obase=2; $BASE_16_NUM" | bc

# Representar o valor em octal
# O comando `printf` com o formato `%o` converte `BASE_16_NUM` para octal.
printf "%o\n" $BASE_16_NUM

# Representar o valor em decimal
# O comando `printf` com o formato `%d` imprime `BASE_16_NUM` em decimal (número inteiro).
printf "%d\n" $BASE_16_NUM
