#!/usr/bin/bash

# atualiza a config do starship
cd /mnt/seagate/bash
python3 ./python/make-starship-config.py
source ~/.bashrc