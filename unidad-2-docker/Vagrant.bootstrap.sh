#!/bin/bash

echo ">>> Eliminando Apache, MySQL y PHP del proyecto anterior"
sudo apt-get remove -y apache2 mysql-server php*
sudo apt-get autoremove -y
sudo apt-get clean

echo ">>> Instalando dependencias para Docker"
sudo apt-get update -y
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo ">>> Agregando repositorio oficial de Docker"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo ">>> Instalando Docker Engine y Docker Compose"
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo ">>> Habilitando y arrancando el servicio Docker"
sudo systemctl enable docker
sudo systemctl start docker

echo ">>> Agregando usuario vagrant al grupo docker"
sudo usermod -aG docker vagrant

echo ">>> Instalación completa"
