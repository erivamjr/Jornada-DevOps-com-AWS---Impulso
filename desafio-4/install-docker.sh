#!/bin/bash

echo "Atualizando Pacotes"
sudo apt-get update
sudo curl -fsSL https://get.docker.com -o get-docker.sh

echo "Instalando Docker compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "Dando permissões ao docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

echo "Versão do docker-compose"
sudo docker-compose --version

echo "Finalizado!!!..."