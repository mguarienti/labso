#!/bin/bash

#Desenvolva um script onde o usuário possa escolher entre duas opções: a primeira, o script deverá ler a 
#hora atual do sistema e informar se é manhã, tarde, ou noite; a segunda opção, o script deverá ler a data 
#atual do sistema e informar em que estação do ano estamos (primavera, verão, outono ou inverno).

day=$(date +%j) # armazena o dia ano (1 a 366).


echo "--> Escolha uma opcao:"
echo "[1] - Informar o turno baseado no system time;"
echo "[2] - Informar a estacao do ano com base no system date"
read -r choice

case "$choice" in
    1)
      if [ "$(date +%k)" -ge 6 -a "$(date +%k)" -le 11 ];  then # Das 6h até 11:59;
        echo "Bom dia! Agora são $(date +%T)."

      elif [ "$(date +%k)" -ge 12 -a "$(date +%k)" -le 17 ]; then # Das 12h até 17h:59;
        echo "Boa tarde! Agora são $(date +%T)."

      else 
        echo "Boa noite! Agora são $(date +%T)." # Das 18h em diante (até 5h);
      
      fi;;

    2)
      if [ "$day" -ge 79 -a "$day" -le 172 ]; then # Primavera: de 20 de março (79° dia) a 21 de junho (172° dia).
        echo "Primavera"
      
      elif [ "$day" -ge 173 -a "$day" -le 266 ]; then # Verão: de 22 de junho (173° dia) a 23 de setembro (266° dia).
        echo "Verão"

      elif [ "$day" -ge 267 -a "$day" -le 356 ]; then # Outono: de 24 de setembro (267° dia) a 22 de dezembro (356° dia). 
        echo "Outono"
      
      else # Inverno: de 23 de dezembro (357° dia) a 19 de março (78° dia).
        echo "Inverno"

      fi;;

  esac
