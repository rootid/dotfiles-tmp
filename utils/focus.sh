#!/bin/bash

# Set up the cron job
# sudo crontab -e
# */5 22-23,0-4 * * * $HOME/dotfiles/utils/focus.sh $HOME/.block-dns
# 0 7 * * * $HOME/dotfiles/utils/pause_focus.sh


dns_file=$1

if [ -z ${dns_file} ]
then
  dns_file=$HOME/.block-dns
fi
if [ ! -f ${dns_file} ]
then
  echo "Enter focus.sh <valid_dns_config_file>"
  exit 1
fi

while read line
do
 echo $line | sudo tee -a /etc/hosts
done < $dns_file
