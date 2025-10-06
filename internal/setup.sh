#!/usr/bin/env bash

# script pra mover o bashrc pra esse diretório, centralizando tudo relacionado a bash aqui
# e fazer um symlink na home pra que ele continue funcionando
cd /mnt/seagate/bash
mv ~/.bashrc .
ln -s /mnt/seagate/bash/.bashrc ~/.bashrc