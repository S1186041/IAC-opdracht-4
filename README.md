# Opdracht week 4

In deze main.tf worden er twee VM's aangemaakt. De configuratie van de VM's is zo ingesteld dat de IP-adressen gescheiden worden, met specifieke secties voor de IP-adressen van de DB-server en de Web-server.

In het playbook.yml wordt NGINX geïnstalleerd op de VM's. Indien de installatie succesvol is, zorgt de handler ervoor dat de NGINX-service automatisch opnieuw wordt gestart. Verder zijn er verschillende rollen gedefinieerd voor de installatie van software op de VM's, waaronder:

MySQL op de DB-server,
PHP op de Web-server,
Node.js op de Web-server.
Bestanden:

main.tf: Bevat de configuratie voor het aanmaken van de virtuele machines en het toewijzen van IP-adressen.
variables.tf: Definieert variabelen zoals de SSH-sleutel en ESXi-instellingen.
userdata.yaml: Bevat de cloud-init instellingen voor de configuratie van de VM's bij opstarten.
metadata.yaml: Bevat cloud-init metadata, waaronder lokale hostnaam en instance-ID voor de VM's.
playbook.yml: Dit is een Ansible-playbook voor het configureren van de VM's. Het zorgt voor het updaten van pakketten, het beheren van gebruikers en de installatie/configuratie van Fail2Ban en andere benodigde services.
hosts.ini: Dit bestand bevat de inventaris van de hosts die worden beheerd via Ansible. Het specificeert welke servers de verschillende rollen zullen krijgen (zoals de DB- of Web-server), en het maakt communicatie mogelijk tussen Ansible en de doel-VM's.
output.tf: Dit bestand bevat de output-instellingen voor Terraform, die worden gebruikt om informatie weer te geven over de geconfigureerde infrastructuur, zoals de IP-adressen van de gemaakte VM's.
Rollen op Ansible Galaxy:

ansible-galaxy role install S1186041.apache_php_mysql > Installatie van de Apache, PHP en MySQL configuraties.
https://galaxy.ansible.com/ui/standalone/roles/S1186041/apache_php_mysql/

ansible-galaxy role install S1186041.mysql > Installatie van MySQL op de DB-server.
https://galaxy.ansible.com/ui/standalone/roles/S1186041/mysql/

ansible-galaxy role install S1186041.nodejs > Installatie van Node.js op de Web-server.
https://galaxy.ansible.com/ui/standalone/roles/S1186041/nodejs/
