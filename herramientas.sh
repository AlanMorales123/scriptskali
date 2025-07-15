#!/bin/bash

# Verifica si es root
if [[ "$EUID" -ne 0 ]]; then
  echo "Por favor, ejecuta este script como root o usando sudo."
  exit 1
fi

echo "Actualizando repositorios..."
apt update && apt upgrade

echo "Instalando MariaDB Server..."
apt install -y mariadb-server

echo "Instalando Apache2..."
apt install -y apache2

echo "Instalando PHP..."
apt install -y php libapache2-mod-php php-mysql

echo "Instalando iptables..."
apt install -y iptables

echo "Instalando rsync..."
apt install -y rsync

echo "Instalando slowhttptest..."
apt install -y slowhttptest

echo "Instalando gocryptfs..."
apt install -y gocryptfs

echo "Instalando net-tools..."
apt install -y net-tools

echo "Instalando nmap..."
apt install -y nmap

echo "-------------------------------------"
echo "¡Instalación completa!"

