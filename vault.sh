#!/bin/bash

echo "Creating ansible vault"
echo ""
read -p "Type your ansible vault password: " vault_password
read -p "Type your PiHole password: " pihole_password
echo $vault_password > ~/.ansible/.secret_pi

ansible-vault encrypt_string --vault-password-file ~/.ansible/.secret_pi "$pihole_password" --name "pihole_password" >> ansible/vault.yml

echo ""
echo "Vault file has been created!"
