#!/bin/bash

# Escreva um script, utilizando o laço for, onde imprima na tela os logins e os nomes completos de todos os usuários do sistema.

if [ $(whoami) = 'root' ]; then # por SEGURANÇA, como usa o arquivo passwd, checa se é root

	linhas=$(getent passwd | wc -l) # Defino quantas linhas tem no arqiuvo passwd
	
	echo ' '
	echo '--> Exibindo os logins e os nomes completos de todos os usuários do sistema:'
	echo ' '

	for ((i=1; i<=linhas; i++))
	do
		echo '------------------'
		echo Usuario: $(getent passwd | cut -d: -f1 | sed -n "$i"p)  # pego o passwd, uso o cut -d -f1 pra pegar a PRIMEIRA parte antes do ':' e uso grep pra definir a linha em questão com base em 'i' (posição no laço)
		echo Nome Completo: $(getent passwd | cut -d: -f5 | sed -n "$i"p) # pego o passwd, uso o cut -d -f5 pra pegar a QUINTA parte antes do ':' e uso grep pra definir a linha em questão com base em 'i' (posição no laço)
		echo '------------------'
		echo ' '
	done

	#getent passwd | cut -d: -f1


else # caso usuário não root,
    echo Você não está logado como root. Execute novamente o script com o root ou use o comando sudo.  #informa non-root
fi