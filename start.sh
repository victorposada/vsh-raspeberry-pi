#!/bin/bash
echo "Creating new inventory file...."
echo ""
read -p "Type your RaspberryPi IP: " ip
read -p "Type your RaspberryPi username: " user
read -p "Type your private key location: " location

echo "raspberrypi:" > ansible/inventory.yml
echo "  hosts:" >> ansible/inventory.yml
echo "    $ip:" >> ansible/inventory.yml
echo "      ansible_ssh_user: $user" >> ansible/inventory.yml
echo "      ansible_ssh_private_key_file: $location" >> ansible/inventory.yml

openssl req -x509 -nodes -newkey rsa:2048 -keyout ansible/ssl/vsh.key -out ansible/ssl/vsh.crt -days 365

echo ""
echo "Inventory file has been created!"
