#!/bin/bash

# Escreva um script que leia dois números e uma operação, de acordo com esta operação, deve ser exibido a soma, 
# subtração, multiplicação e divisão destes dois números. Para encerrar a execução do script, o usuário deverá informar o valor -1.

echo ' '
echo '--> Insira um numero:'
read -r num1

echo "--> Escolha uma opcao (use o valor):"
echo "[+] - Soma;"
echo "[-] - Subtração;"
echo "[x] - Multiplicação;"
echo "[/] - Divisão;"
read -r operation

echo ' '
echo '--> Insira outro numero para realizar a operação:'
read -r num2

case "$operation" in
    +)
		echo ' '
		echo '-----> Operação: '$num1'+'$num2'='$((num1+num2))'';;

	-)
		echo ' '
		echo '-----> Operação: '$num1'-'$num2'='$((num1-num2))'';;

	x)
		echo ' '
		echo '-----> Operação: '$num1'*'$num2'='$((num1*num2))'';;

	/)
		echo ' '
		echo '-----> Operação: '$num1'/'$num2'='$((num1/num2))'';;

	*)
		echo ' '
		echo '-----> ERRO: Operação inválida!';;
esac

