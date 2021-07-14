#!/bin/bash
# é necessário habilitar a permissão de acesso de aplicativos menos seguros no email responsavel por enviar 

frequencia=$1
servidor=$2
execucao=$3

EMAIL_FROM="email@email.com.br"
EMAIL_TO="email@destino.com.br"

SERVIDOR_SMTP="smtp.gmail.com:587"
SENHA="senha_email_from"

ASSUNTO="BACKUP $2 - $1 | MYSQL"
MENSAGEM="O backup $2 do servidor $1 foi executado com sucesso ! Horário de Execução: $3"

sendEmail -f $EMAIL_FROM -t $EMAIL_TO -u "$ASSUNTO" -o tls=yes -m "$MENSAGEM" -s $SERVIDOR_SMTP -xu $EMAIL_FROM -xp $SENHA
