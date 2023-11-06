#!/bin/bash
echo "Creating new inventory file...."
echo ""
read -p "Typo your RaspberryPi IP: " ip
read -p "Type your RaspberryPi username: " user
read -p "Type your private key location: " location

echo "raspberrypi:" > ansible/inventory.yml
echo "  hosts:" >> ansible/inventory.yml
echo "    $ip:" >> ansible/inventory.yml
echo "      ansible_ssh_user: $user" >> ansible/inventory.yml
echo "      ansible_ssh_private_key_file: $location" >> ansible/inventory.yml

echo ""
echo "Inventory file has been created!"
