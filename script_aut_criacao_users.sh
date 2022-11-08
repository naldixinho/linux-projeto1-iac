#!/bin/bash

echo " CRIANDO DIR... "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " CRIANDO GROUPS E USERS .."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " CRIANDO USERS..."

useradd carlos -c " Usuário do GRUPO_ADM " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd calos -e
useradd mirian -c " Usuário do GRUPO_ADM " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd mirian -e
useradd joao -c " Usuário do GRUPO_ADM " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd joao -e

useradd debora -c " Usuário do GRUPO_VEN " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd debora -e
useradd sebastiao -c " Usuário do GRUPO_VEN " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd sebastiao -e
useradd roberto -c " Usuário do GRUPO_VEN " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd roberto -e

useradd josefina -c " Usuário do GRUPO_SEC " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd josefina -e
useradd amanda -c " Usuário do GRUPO_SEC " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c " Usuário do GRUPO_SEC " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd rogerio -e

echo " Especificando permissões nos diretórios..."

chown root : GRP_ADM /adm
chown root : GRP_VEN /ven
chown root : GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo " Foram criados os diretórios dos respectivos usuários!"
echo " Observação: senha 123 para todos os usuários, porém, deveram alterara senha  no primeiro acesso..."
echo " Dúvidas; procurar o suporte de T.I"
echo " Fim.."
