#!/bin/bash

# Implemente um script shell que leia o login de usuários até que seja digitado o 
#número 0, e retorne, para cada usuário o seu UID e o GID do seu grupo primário.


again=1

echo ' '
echo '--> Digite um usuário para consula do UID e GID. Digite 0 para parar:'
echo ' '

while [ $again = 1 ]
	do
	  	echo ' '
	  	read -r choice

	  	if [ $choice = 0 ]; then
	  		echo ' '
	  		echo Ok, saindo...
	  		break
	  	else
	  		echo ' '
			echo 'Para o usuário '$choice':'
			echo UID: $(grep $choice /etc/passwd | cut -d: -f3)
			echo GID: $(grep $choice /etc/passwd | cut -d: -f4)
		fi;
	done