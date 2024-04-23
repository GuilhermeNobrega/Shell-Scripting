#!/bin/bash

function connection(){
    read -p "Digite o IP do domínio e porta (xxx.xx.x.xx:443) para acesso: " ip
    read -p "Digite o nome do domínio para acesso: " name
    #xxx.x.x.x:443 -servername name
    openssl s_client -connect $ip -servername $name | openssl x509 -noout -text -enddate
}

connection

#Verificação da validade dos certificados dos sites
