#!/bin/bash

# Solicita o IP ou domínio ao usuário
echo "Informe o IP ou domínio a ser analisado:"
read -r ALVO

if [[ -z $ALVO ]]; then
  echo "Nenhum IP ou domínio foi informado. Saindo..."
  exit 1
fi

# Diretório de saída
OUTPUT_DIR="/home/user/SavedContent/resultados"
mkdir -p $OUTPUT_DIR

# WHOIS
WHOIS_FILE="$OUTPUT_DIR/whois.txt"
echo "Executando whois para $ALVO..."
whois $ALVO > $WHOIS_FILE 2>/dev/null
echo "Resultado salvo em $WHOIS_FILE"

# NSLOOKUP
NSLOOKUP_FILE="$OUTPUT_DIR/nslookup.txt"
echo "Executando nslookup para $ALVO..."
nslookup $ALVO > $NSLOOKUP_FILE 2>/dev/null
echo "Resultado salvo em $NSLOOKUP_FILE"

# HOST
HOST_FILE="$OUTPUT_DIR/host.txt"
echo "Executando host para $ALVO..."
host $ALVO > $HOST_FILE 2>/dev/null
echo "Resultado salvo em $HOST_FILE"

# DIG
DIG_FILE="$OUTPUT_DIR/dig.txt"
echo "Executando dig para $ALVO..."
dig $ALVO > $DIG_FILE 2>/dev/null
echo "Resultado salvo em $DIG_FILE"


echo "Coleta de informações finalizada. Resultados armazenados no diretório '$OUTPUT_DIR'."