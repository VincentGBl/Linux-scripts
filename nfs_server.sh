#!/bin/bash

#instala os pacotes necessários para a utilização do servidor NFS
sudo apt install nfs-kernel-server -y

#cria a pasta que será compartilhada pela rede
sudo mkdir -p /mnt/espaco_compartilhadoX

#remove a configuração base de pertencimento a usuário/grupo da pasta
sudo chown nobody:nogroup /mnt/espaco_compartilhadoX

#adiciona as regras de utilização e a pasta a ser compartilhada
echo "/mnt/espaco_compartilhadoX Y.Y.Y.Y/Z(rw,sync,no_subtree_check)" >> /etc/exports
#Y.Y.Y.Y(Endereço de rede)/Z(Máscara de rede)

sudo exportfs -a
sudo systemctl restart nfs-kernel-server
