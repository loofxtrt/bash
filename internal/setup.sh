#!/usr/bin/env bash

# script pra mover o bashrc pra esse diretório, centralizando tudo relacionado a bash aqui
# e fazer um symlink na home pra que ele continue funcionando
cd /mnt/seagate/bash
rm ~/.bashrc
ln -s /mnt/seagate/bash/.bashrc ~/.bashrc

# também move a config do starship pra ser um symlink
rm ~/.config/starship.toml
ln -s /mnt/seagate/bash/starship.toml ~/.config/starship.toml