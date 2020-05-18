#!/bin/bash

# Crie um script que gere um arquivo de log contendo um relatório sobre o espaço em disco 
#utilizado pelo /home, com a data atual. A primeira execução deste script deverá ser feita 
#após a inicialização do serviço de sshd.

echo ' ' >> /var/log/homelog.txt
echo '-----> Relatório de espaço em disco' >> /var/log/homelog.txt
echo ' ' >> /var/log/homelog.txt
echo Diretório Montado: $(df -h | grep home | awk '{print $6}') >> /var/log/homelog.txt
echo Sistema de Arquivos: $(df -h | grep home | awk '{print $1}') >> /var/log/homelog.txt
echo Tamanho: $(df -h | grep home | awk '{print $2}') >> /var/log/homelog.txt
echo Usado: $(df -h | grep home | awk '{print $3}') - $(df -h | grep home | awk '{print $5}') >> /var/log/homelog.txt
echo Disponível: $(df -h | grep home | awk '{print $4}') >> /var/log/homelog.txt
echo ' ' >> /var/log/homelog.txt
echo Data: $(date +%d/%m/%Y) $(date +%T) >> /var/log/homelog.txt
echo ' ' >> /var/log/homelog.txt