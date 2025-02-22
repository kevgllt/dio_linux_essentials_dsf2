#!/bin/bash

echo "Atualizando o sistema Operacional ..."
apt-get update && apt-get upgrade -y

echo "Instalando o apache"
apt-get install apache2 -y

echo "instalando unzip ..."
apt-get install unzip -y

echo "Baixando site no repositorio do github ..."
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "extraindo arquivos do site"
cd /tmp/
unzip main.zip

echo "Movendo arquivos do site para o diretorio do apache server"
cp -v -r /tmp/linux-site-dio-main/* /var/www/html/

echo "Concluido!!!"
