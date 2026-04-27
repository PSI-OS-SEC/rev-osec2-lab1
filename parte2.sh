#/bin/sh

clear

if [ ! $(id -u) -eq 0 ]
then
 echo "Debe Ejecutar este script, como root desde SISTEMA 2 - Red Hat"
 exit 1
fi

echo ""
echo "Ejercicio 1 - Revisar grupos y usuarios"

grep itwebmasters /etc/group
grep itops /etc/group
grep itadmins /etc/group
echo ""

echo "Ejercicio 2 - IDs 1201 y 1202"
grep adm01 /etc/passwd
grep adm02 /etc/passwd
echo ""

echo "Ejercicio 3"
echo "Info de passwords"
chage -l web01
echo ""

echo "Ejercicio 4 - No shell"
grep web01 /etc/passwd
grep web02 /etc/passwd
echo ""

echo "Ejercicio 5 - Shell sh"
grep ops01 /etc/passwd
grep ops02 /etc/passwd
chage -l ops01
chage -l ops02
echo ""

echo "Ejercicio 6 - User locked"
sudo grep adm02 /etc/shadow
chage -l adm02
echo ""

md5sum $0
