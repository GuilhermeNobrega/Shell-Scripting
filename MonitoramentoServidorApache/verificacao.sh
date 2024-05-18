#!/bin/bash

#Verificação de status de servidor apache2

#curl -I http://localhost

statusApache=$(service apache2 status)
#echo $t
verificaStatusApache=$( echo $statusApache | awk '/Active:/ {print $16}' )
if [[ "$verificaStatusApache" == "inactive" ]];
then
    echo "Apache2 está $verificaStatusApache. Ative-o!"
else
    echo "Apache2 está $verificaStatusApache"
fi

statusCode=$(curl --write-out %{http_code} --silent --output /dev/null  http://localhost)

if [[ "$statusCode" -eq 200 ]];
then
    :
else
    echo "Erro de requisação: $statusCode. Reiniciando servidor..."
    sleep 5s
    #service apache2 restart
    systemctl restart apache2
    echo "Servidor reiniciado!"
fi
