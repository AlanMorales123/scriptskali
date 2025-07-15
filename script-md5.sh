#!/bin/bash
# Ruta completa del respaldo (ajusta el nombre según tu archivo)
respaldo="/tmp/ciberseguridad1-2025-07-14-19:45:51.sql"
# Archivo donde se guardará el hash
archivo_md5="${respaldo}.md5"
# Generar el hash md5 y guardarlo en el archivo
md5sum "$respaldo" > "$archivo_md5"
# Mensaje de confirmación
if [ $? -eq 0 ]; then
    echo "Archivo de integridad generado correctamente: $archivo_md5"
else
    echo "Hubo un error al generar el archivo de integridad."
fi

