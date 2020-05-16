#!/bin/bash

# Implemente um shell script para adicionar usuários em seu servidor. Deverá ser lido o nome do usuário, o script deverá 
#verificar se o usuário já está cadastrado no servidor, se sim, retorna uma mensagem: “Usuário já cadastrado” e encerra-se 
#o script. Caso contrário, deverá ser perguntado em qual o grupo que o usuário será inserido. Além da criação do usuário 
#deverá também ser criada uma pasta, com o nome do usuário no /home.

if [ $(whoami) = 'root' ]; then # por SEGURANÇA, como usa o arquivo passwd, checa se é root

	echo ' '
	echo '#### Sistema de Cadastro de Usuário ####'
	echo ' '
	echo '---> Informe um usuário para cadastro (username): '
	read -r username

	if [ $username = $(getent passwd | cut -d: -f1 | grep $username) ]; then
		echo ' '
		echo 'ERRO: Usuário já cadastrado!'
		echo ' '

	else
		echo ' '
		echo '---> Informe um grupo (existente) para o usuário '$username':'
		read -r group
		echo ' '
		echo '---> Informe uma senha para o usuário '$username':'
		read -r pass
		echo ' '
		$(useradd $username --home-dir /home/$username -g $group --password pass)

	fi

else # caso usuário não root,
    echo Você não está logado como root. Execute novamente o script com o root ou use o comando sudo.  #informa non-root
fi