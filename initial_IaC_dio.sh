#!/bin/bash

echo "Creating folders"

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating users groups"

group GRP_ADM
group GRP_VEM
group GRP_SEC

echo "Creating users and adding to groups"

useradd phsousa -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_ADM
useradd marie -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_ADM
useradd ohanna -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_ADM

useradd carlos -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_VEM
useradd higor -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_VEM
useradd peter -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_VEM

useradd lukas -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_SEC
useradd leonardo -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_SEC
useradd paulo -m -s /bin/bash -p "$(openssl passwd -crypt password123)" -G GRP_SEC

echo "Specifying directory permissions"

chown root:GRP_ADM /adm
chown root:GRP_VEM /vem
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /vem
chmod 770 /sec
chmod 777 /public

echo "Finish..."