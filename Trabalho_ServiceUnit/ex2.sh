#!/bin/bash

# Crie um script que gere um arquivo de log, com a situação de quotas de um determinado usuário.
#A primeira execução do script deverá ser feita após a inicialização do serviço cron. E deverá 
#ser inicializado todos os domingos as 9:30h.

echo ' ' >> /home/$(whoami)/userquota.log
echo '-----> Relatório de quota do usuario ' >> /home/$(whoami)/userquota.log
echo ' ' >> /home/$(whoami)/userquota.log
echo Sistema de Arquivos: $(quota $(whoami) | grep /dev/ | awk '{print $1}') >> /home/$(whoami)/userquota.log
echo Blocos em uso: $(quota $(whoami) | grep /dev/ | awk '{print $2}') >> /home/$(whoami)/userquota.log
echo Quota: $(quota $(whoami) | grep /dev/ | awk '{print $3}') >> /home/$(whoami)/userquota.log
echo Limite: $(quota $(whoami) | grep /dev/ | awk '{print $4}') >> /home/$(whoami)/userquota.log
echo ' ' >> /home/$(whoami)/userquota.log
echo Data: $(date +%d/%m/%Y) $(date +%T) >> /home/$(whoami)/userquota.log
echo ' ' >> /home/$(whoami)/userquota.log