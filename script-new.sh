#!/bin/bash

# Script de provisionamento de servidor web Apache
# Autor: vyk1

echo "Iniciando provisionamento do servidor web..."

# Atualiza o sistema
apt update -y
apt upgrade -y

# Instala Apache
apt install apache2 -y

# Habilita e inicia o serviço
systemctl enable apache2
systemctl start apache2

# Cria página exemplo
echo "<html><head><title>Servidor Web</title></head><body><h1>Servidor provisionado com sucesso!</h1></body></html>" > /var/www/html/index.html

# Define permissões
chown www-data:www-data /var/www/html/index.html
chmod 644 /var/www/html/index.html

# Testa disponibilidade local
curl -I localhost

# Log de execução
echo "Servidor web provisionado em $(date)" >> /var/log/webserver_setup.log

echo "Provisionamento concluído com sucesso!"