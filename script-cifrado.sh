#!/bin/bash
# Archivo de respaldo que quieres cifrar (ajusta el nombre si cambia)
RESPALDO="/tmp/ciberseguridad1-2025-07-14-19:45:51.sql"
# Carpeta montada donde se cifrará el respaldo
CIFRADOS="/root/cifrados"
# Verifica que el respaldo existe
if [ ! -f "$RESPALDO" ]; then
  echo "No existe el archivo de respaldo: $RESPALDO"
  exit 1
fi
# Copia el respaldo al directorio cifrado
cp "$RESPALDO" "$CIFRADOS/"
if [ $? -eq 0 ]; then
  echo "Respaldo copiado y cifrado correctamente en: $CIFRADOS/"
else
  echo "Error al copiar el respaldo."
  exit 2
fi
# Verifica que el archivo está en el directorio cifrado
if [ -f "$CIFRADOS/$(basename $RESPALDO)" ]; then
  echo "Verificación OK: El archivo está cifrado en $CIFRADOS"
else
  echo "Verificación ERROR: El archivo no se encuentra en $CIFRADOS"
fi

