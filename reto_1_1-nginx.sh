#!/bin/bash
echo "Verificando para instalar"
echo "$1  $2"

NAME_PARM1=$1
VERSION_PARM2=$2

function error () {
    echo "[ ERROR ] - $@"
}

function lastes_version () {
    echo -e "[ INSTALANDO LATEST VERSION ] - $@ \n"
	docker pull $NAME_PARM1:latest
}

function name_version () {
    echo -e " [ INSTALANDO CONTENEDOR ] >>>>  $@ \n"
	docker pull $@ && echo -e " \n [ INSTACION COMPLETA ] "
}


if [ -z $NAME_PARM1 ]; then
   error " Sin nombre de contenedor"
elif [ -z $VERSION_PARM2 ]; then
   lastes_version "Instalando LATEST VERSION"
else
    name_version "$NAME_PARM1:$VERSION_PARM2"
fi	



