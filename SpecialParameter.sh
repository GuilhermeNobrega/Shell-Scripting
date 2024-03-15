#Em resumo, "$*" expande todos os argumentos como uma única string, enquanto "$#" (ou $@) retorna o número de argumentos passados.

#!/bin/bash

for values in "$*"
do
echo "$values"
done

#!/bin/bash

for values in "$@"
do
echo "$values"
done
