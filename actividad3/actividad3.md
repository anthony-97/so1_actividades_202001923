# Sistemas Operativos 1
## _Actividad 3_
##
##### Anthony Alexander Aquino Santiago - 202001923
##
##
##
## Parte 1 - Gestión de usuarios
### 1. Creación de usuarios
```
sudo adduser usuario1
sudo adduser usuario2
sudo adduser usuario3
```
![](usr1.png)
![](usr2.png)
![](usr3.png)

### 2. Asignacion de contraseñas
```
sudo passwd usuario1
sudo passwd usuario2
```
![](P1_2.png)

### 3. Información de usuarios
```
sudo id usuario1
```
![](P1_3.png)

### 4. Eliminación de usuarios
```
sudo deluser usuario3
```
![](P1_4.png)

## Parte 2 - Gestión de grupos
### 1. Creación de grupos
```
sudo groupadd grupo1
sudo groupadd grupo2
```
![](P2_1.png)

### 2. Agregar usuarios a grupos
```
sudo usermod -aG grupo1 usuario1
sudo usermod -aG grupo2 usuario2
```
![](P2_2.png)

### 3. Verificar membresía
```
groups usuario1
groups usuario2
```
![](P2_3.png)

### 4. Eliminar grupo
```
sudo groupdel grupo2
```
![](P2_4.png)

## Parte 3 - Gestión de permisos
### 1. Creación de archivos y directorios
```
cd ~
cat > archivo1.txt
mkdir directorio1
cd directorio1
cat > archivo2.txt
```
![](P3_1.png)

### 2. Verificar permisos 
```
ls -l archivo2.txt
ls -l archivo1.txt
ls -ld directorio1
```
![](P3_2.png)

### 3. Modificar permisos usando chmod con modo numérico
```
chmod 640 archivo1.txt
```
![](P3_3.png)

### 4. Modificar permisos usando chmod con modo simbólico
```
chmod u+x archivo2.txt
```
![](P3_4.png)

### 5. Cambiar el grupo propietario
```
chgrp grupo1 archivo2.txt
```
![](P3_5.png)

### 6. Configurar permisos de directorio
```
chmod 740 directorio1
```
![](P3_6.png)

### 7. Comprobación de acceso
```
su usuario2
cd ~
cat /home/usuario1/archivo1.txt
cat /home/usuario1/directorio1/archivo2.txt
```
![](P3_7.png)

### 8. Verificación final
```
ls -l archivo2.txt
ls -l archivo1.txt
ls -ld directorio1
```
![](P3_8.png)