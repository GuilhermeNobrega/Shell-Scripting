function check() {
    Cluster=$1
    Pilha=$2

    count=$("${Cluster}" get pods -n "${Pilha}" | grep -i keep | wc -l)
    echo "Count: $count"  # Adiciona esta linha para depurar

    if [ "$count" -ge 2 ]; then
        echo 1
    else
        echo 0
    fi
}

# Chamando a função com argumentos e atribuindo o resultado a uma variável
teste=$(check "kubectl-senado-hml-01" "inf-pilha-web-plone-hml-k8")

# Imprimindo o resultado
echo "Resultado da função: $teste"



 # sudo kubectl-senado-hml-01 get pods -n inf-pilha-web-plone-hml-k8 | grep -i keep
function check() {
    Cluster=$cmd1
    Pilha=$cmd2

    count=$("${Cluster}" get pods -n "${Pilha}" | grep -i keep | wc -l)
    if [ "$count" -ge 2 ]; then
        echo "1"
    else
        echo "0"
    fi
}
