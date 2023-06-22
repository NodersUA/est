#!/bin/bash

if [ -z "$MONIKER" ]; then
  echo "*********************"
  echo -e "\e[1m\e[34m		Lets's begin\e[0m"
  echo "*********************"
  echo -e "\e[1m\e[32m	Enter your MONIKER:\e[0m"
  echo "*********************"
  read MONIKER
  echo 'export MONIKER='$MONIKER >> $HOME/.bash_profile
  source ~/.bash_profile
fi

cd ~
mkdir -p ~/scripts && cd scripts
rm -rf est
git clone https://github.com/NodersUA/est.git && cd est
chmod +x est.sh
./est.sh
