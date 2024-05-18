# Monitoramento do Servidor Apache

Este projeto consiste em um script shell simples para monitorar o servidor Apache, reiniciá-lo se necessário e enviar um e-mail para o administrador do sistema caso ocorra algum problema.

## Requisitos

- Sistema operacional Linux com o Apache instalado.
- Bash (interpretador de comandos shell).

## Instalação


1. Instale o Apache no seu sistema Linux:
   ```bash
   sudo apt-get install apache2
   ```

2. Mover site para diretório do apache2:
```bash
  sudo mv ~/Downloads/index.html /var/www/html/index.html
 ```
## Comandos apache2
1. Alguns comandos importantes para teste do apache2
   
   ```bash
   service apache2 start
   service apache2 status
   service apache2 stop
   service apache2 restart
   ```
## Crontab
1. Após criar o script e seguir os passos anteriores, adicione sua execução ao crontab:

2. To define the time you can provide concrete values for
  minute (m), hour (h), day of month (dom), month (mon),
  and day of week (dow) or use '*' in these fields (for 'any').

 ```bash
 chmod +x script.sh
crontab -e
 */2 * * * *
 # Executar a cada 2 minutos, todo dia, hora, mes, dia da semana.
   ```
