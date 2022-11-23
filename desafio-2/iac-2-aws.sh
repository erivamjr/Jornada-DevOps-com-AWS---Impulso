#!/bin/bash

echo "Atualizando Servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando Apache..."
apt-get install apache2 -y

echo "Instalando Unzip..."
apt-get install unzip -y

echo "Entrando na pasta tmp..."
cd /tmp

echo "Baixando o arquivo..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo..."
unzip main.zip

echo "Movendo o arquivo para a pasta /var/www/html..."
cp -R linux-site-dio-main/* /var/www/html

