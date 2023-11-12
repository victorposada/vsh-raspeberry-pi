#!/bin/bash

echo "Creating ansible vault"
echo ""
read -p "Type your ansible vault password: " vault_password
read -p "Type your PiHole password: " pihole_password
read -p "Type your InfluxDB admin password: " influx_root_password
read -p "Type your InfluxDB user password: " influx_user_password
read -p "Type your TeamSpeak DB root password: " ts_db_password
echo $vault_password > ~/.ansible/.secret_pi

ansible-vault encrypt_string --vault-password-file ~/.ansible/.secret_pi "$pihole_password" --name "pihole_password" > ansible/vault.yml
ansible-vault encrypt_string --vault-password-file ~/.ansible/.secret_pi "$influx_root_password" --name "influx_root_password" >> ansible/vault.yml
ansible-vault encrypt_string --vault-password-file ~/.ansible/.secret_pi "$influx_user_password" --name "influx_user_password" >> ansible/vault.yml
ansible-vault encrypt_string --vault-password-file ~/.ansible/.secret_pi "$ts_db_password" --name "ts_db_password" >> ansible/vault.yml

echo ""
echo "Vault file has been created!"
