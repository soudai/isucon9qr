.PHONY: all restart logrotate alp pull

all: restart logrotate

build:
	cd /home/isucon/isucari/webapp/go && $(MAKE) 

pull:
	cd /home/isucon/isucari/webapp && git pull origin main

restart: pull build logrotate
	sudo systemctl restart isucari.golang.service

logrotate:
	./logrotate.sh

alp:
	./alp.sh

tcpdump:
	sudo tcpdump -s 65535 -x -nn -q -tttt -i any port 3306 > logs/mysql-tcpdump.log

pt-query-digest:
	pt-query-digest --type tcpdump logs/mysql-tcpdump.log > logs/ptq-$(shell date "+%Y%m%d%H%M%S").log
