#!/bin/bash

OPTS='--max-time 10'

CONFIG_FILE=config-parte1

source ${CONFIG_FILE}

echo "Clone y ejecute este script desde SISTEMA 1 - RHEL"

function grade() {
 COMMAND=$1
 if [ "$2" == "nonull" ]
 then
  ${COMMAND}
 else
  ${COMMAND} &>/dev/null
 fi
 test $? -eq 0  && echo -e "OK" && return 0 || echo -e "FAILED" && return 1
}



echo "Validar acceso a Web Server - SISTEMA 2 - Ubuntu "

grade "curl $OPTS http://${UBUNTU}"

echo "Validar acceso a Web Server - SISTEMA 1 - Red Hat "

grade "curl $OPTS http://${RHEL}"



echo "REALICE LOS CAMBIOS NECESARIO EN RHEL Y ACTIVE DE FORMA PERMANENTE EL ACCESO A PUERTO 80/443 (EN OTRA TERMINAL)"
read -p "PRESIONE ENTER, CUANDO ESTE LISTO"

echo "Validar acceso a Web Server - Ubuntu"

grade "curl $OPTS http://${UBUNTU}"







