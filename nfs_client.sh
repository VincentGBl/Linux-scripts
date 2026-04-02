#!/bin/bash

#Instala os pacotes necessários para utilizar o serviço nfs nos computadores cliente
sudo apt install nfs-common -y

#cria um arquivo backup automático para o fstab em caso de desastres
cp /etc/fstab /home/user.admin/.bakup-fstab

#cria as pastas de montagem do storage no caminho certo caso elas não existam ainda
mkdir /mnt/Pasta_X
mkdir /mnt/Pasta_Y

#adiciona no fstab as linhas necessárias para se comunicar com os computadores-servidores com espaço compartilhado disponíveis nos laboratórios
echo "X.X.X.X:/mnt/Storage_C1 /mnt/espaco_compartilhado1 nfs defaults 0 0" >> /etc/fstab
echo "X.X.X.X:/mnt/Storage_C4 /mnt/espaco_compartilhado2 nfs defaults 0 0" >> /etc/fstab
#substitua o "X.X.X.X" pelo endereço de IP da Máquina que está servindo como servidor NFS 
#substitua o /mnt/espaco_compartilhadoX pelo caminho da pasta compartilhada no servidor NFS
