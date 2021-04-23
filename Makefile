
INVENTORY=pettypiece.ca,

.PHONY: init deploy update update-web update-vpn

init:
	ansible-galaxy install -f -r requirements.yml

deploy: init
	ansible-playbook --user root -i $(INVENTORY) main.yml

update: init
	ansible-playbook -K -i $(INVENTORY) main.yml

update-web: init
	ansible-playbook -K -i $(INVENTORY) --tags nginx,letsencrypt main.yml

update-vpn: init
	ansible-playbook -K -i $(INVENTORY) --tags wireguard main.yml
