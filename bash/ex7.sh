#!/bin/bash

# Escreva um shell script que receba como parâmetro um determinado número 
# inserido pelo usuário. O script deverá dizer se esse número é par ou é ímpar.

echo -n "Informe um inteiro:"
read num

val=$[ $num & 1 ]

if [ $val -eq 0 ]; then
  echo "O valor é PAR"
else
  echo "O valor é IMPAR"
fi