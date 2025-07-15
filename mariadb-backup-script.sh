#!/bin/bash
# Usuario de la base de datos
db_user="alan3"
# Contraseña del usuario
db_password="holamundo123"
# Nombre de la base de datos que deseas respaldar
db_name="ciberseguridad1"
# Directorio donde guardarás el respaldo
backup_dir="/tmp"
# Fecha y hora en el formato deseado
backup_date=$(date +"%Y-%m-%d-%H:%M:%S")
# Nombre del archivo de respaldo
backup_file="$backup_dir/$db_name-$backup_date.sql"
# Comando para hacer el respaldo
mysqldump -u$db_user -p$db_password $db_name > $backup_file
# Verificar si el respaldo fue exitoso
if [ $? -eq 0 ]; then
  echo "Respaldo de la base de datos $db_name completado exitosamente."
else
  echo "Error al hacer el respaldo de la base de datos $db_name."
fi

