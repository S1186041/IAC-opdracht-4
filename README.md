# Opdracht week 4

In deze main.tf worden er maar 2 VM's aangemaakt

bij het aanmaken van de VM's worden de IP's gescheiden, er komt een sectie met het IP van de DB-server en een sectie met het IP van de Web-server

in het "playbook.yml" wordt nginx geinstalleerd op de VM's als dit gelukt is restart de handler de nginx service automatisch
daarnaast zijn er roles aangemaakt voor: mysql, php en nodejs. mysql wordt op de DB geinstalleerd en php op de webserver.

Bestanden
- main.tf: Hierin staat de configuratie voor de VM's.
- variables.tf: Bevat variabelen zoals de SSH-sleutel en ESXi-instellingen.
- userdata.yaml: Cloud-init instellingen voor de VM's.
- metadata.yaml: Bevat cloud-init metadata, waaronder lokale hostname en instance-ID.
- playbook.yml: Een Ansible-playbook voor aanvullende configuratie van de VM's, zoals het updaten van pakketten, gebruikersbeheer en installatie/configuratie van Fail2Ban.

Installeer Terraform en Ansible.
Pas indien nodig de variabelen in variables.tf en instellingen in playbook.yml aan.
Voer terraform init en terraform apply uit om de VM's te creëren.
Gebruik ansible-playbook playbook.yml -i inventory.ini om Ansible-taken op de VM's uit te voeren.


Mijn roles op Ansible Galaxy:
ansible-galaxy role install S1186041.apache_php_mysql
ansible-galaxy role install S1186041.mysql
ansible-galaxy role install S1186041.nodejs