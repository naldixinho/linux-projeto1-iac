#!/bin/bash

echo "iniciando criação de users"

useradd teste1 -c "Usuário de teste" -s /bin/bash -m -p $(openssl passwd Abc@123)
passwd teste1 -e

useradd teste2 -c "Usuário de teste" -s /bin/bash -m -p $(openssl passwd Abc@123)
passwd teste2 -e


useradd teste3 -c "Usuário de teste" -s /bin/bash -m -p $(openssl passwd Abc@123)
passwd teste3 -e

echo " terminei!"

