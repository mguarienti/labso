#!/bin/bash

# Escreva um script que verifique se o arquivo .bash_history existe no seu diretório de 
#usuário (home). Se existir, retorne a mensagem. “Arquivo encontrado”, caso contrário,
#retorne: “Arquivo não encontrado”.

if [ -e "/home/$(whoami)/.bash_history" ]; then
echo "Arquivo encontrado"
else
echo "Arquivo não encontrado"
fi
