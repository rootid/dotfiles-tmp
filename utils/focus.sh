#!/bin/sh

dns_file=$HOME/.block-dns

while read line
do
 echo $line | sudo tee -a /etc/hosts
done < $dns_file
