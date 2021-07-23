#!/bin/bash

set -ex

sudo cp /var/log/nginx/access.log /home/isucon/logs/access-$(date "+%Y%m%d%H%M%S").log
sudo sh -c 'echo "" > /var/log/nginx/access.log'
sudo cp /home/isucon/logs/mysql-tcpdump.log /home/isucon/logs/mysql-tcpdump-$(date "+%Y%m%d%H%M%S").log
echo "" > /home/isucon/logs/mysql-tcpdump.log
