#!/bin/zsh

# TODO: Firefox persist the cached DNS records, so update the DNS records using firefox "open about:networking#dns"
# Set up the cron job
# sudo crontab -e
# */5 22-23,0-4 * * * $HOME/dotfiles/utils/focus.sh $HOME/.block-dns
# 0 7 * * * $HOME/dotfiles/utils/pause_focus.sh

function block_dns() {
  dns_file=$1

  while read line
  do
   echo $line | sudo tee -a /etc/hosts
  done < $dns_file
}

function pause_block() {
  sudo sed -i -e "/0.0.0.0/d" /etc/hosts
}

function default_block() {
   block_dns $HOME/.dns-block-adult
}

function go_freedom_media() {
   block_dns $HOME/.dns-block-media
}

function go_freedom_leisure() {
   block_dns $HOME/.dns-block-leisure
}

function go_freedom_youtube() {
   block_dns $HOME/.dns-block-youtube
}

function go_freedom_shopping() {
   block_dns $HOME/.dns-block-shopping
}

function go_slave_shopping() {
   pause_block
   default_block
   go_freedom_media
   go_freedom_leisure
   go_freedom_youtube
}

function go_slave_media() {
   pause_block
   go_freedom_media
   go_freedom_leisure
   go_freedom_youtube
   go_freedom_shopping
   default_block
}

function go_slave_leisure() {
   pause_block
   go_freedom_media
   go_freedom_youtube
   go_freedom_shopping
   default_block
}

function go_slave_youtube() {
   pause_block
   default_block
   go_freedom_media
   go_freedom_leisure
   go_freedom_shopping
}
