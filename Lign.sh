#!/bin/bash
#PURPOSE: This function is used to give the end user some feedback that 
# 	"something" is running.  It gives a line twirling in a circle.
#	This function is started as a background process.

function rotate {
    # Configuração do intervalo entre giros
    INTERVAL=1
    # Inicializa o contador
    TCOUNT=0

    while true; do
        # Incrementa o contador
        ((TCOUNT++))
        # Escolhe o caractere de rotação com base no contador
        case $TCOUNT in
            1) echo -n '-';;
            2) echo -n '\\';;
            3) echo -n '|';;
            4) echo -n '/';;
        esac
        
        # Mova o cursor para o início da linha
        echo -ne "\b"
        
        # Reseta o contador
        if [[ $TCOUNT -ge 4 ]]; then
            TCOUNT=0
        fi
        
        # Pausa por um intervalo
        sleep $INTERVAL
    done
}
rotate
