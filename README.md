# Instrucciones 

## En SISTEMA #2 - RHEL como el usuario root

1. Instalar paquetes git
```
dnf install -y git
```

2. Clonar repositorio
```
git clone https://github.com/PSI-OS-SEC/rev-osec2-lab1.git
```

3. cd rev-osec2-lab1/

4. Editar el archivo ```config-parte1``` y modificiar los valores de:

```
UBUNTU=""
RHEL=""
```

5. Parte #1

```
chmod u+x parte1.sh
./parte1.sh
```

6. Parte #2

```
chmod u+x parte2.sh
./parte2.sh
```
