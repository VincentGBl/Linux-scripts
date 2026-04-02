#!/bin/bash

#instala os pacotes necessários para a utilização do servidor NFS
sudo apt install nfs-kernel-server -y

#cria a pasta que será compartilhada pela rede
sudo mkdir -p /mnt/espaco_compartilhadoX

#remove a configuração base de pertencimento a usuário/grupo da pasta
sudo chown nobody:nogroup /mnt/espaco_compartilhadoX
