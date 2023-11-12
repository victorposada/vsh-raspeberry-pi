# vsh-raspberry-pi  🍓🔧

![Ansible Logo](https://img.shields.io/badge/Ansible-2.10%2B-blue?style=for-the-badge)
![Raspberry Pi Logo](https://img.shields.io/badge/Raspberry%20Pi-4%20%7C%204%20%2B-ff4141?style=for-the-badge)


This repository is dedicated to managing my Raspberry Pi using Ansible. 
It provides a collection of Ansible playbooks and tasks to simplify the management of your Raspberry Pi device.

## Prerequisites 🛠️

Before using the playbooks and tasks in this repository, ensure you have the following prerequisites:

- Ansible 2.10 or higher installed on your control machine.
- Raspberry Pi 4 or higher (Model 4 or 4+).
- Acces to the Raspberry Pi using ssh key authenticaton.

## Usage 🚀

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/vsh-raspberry-pi.git
   cd vsh-raspberry-pi

2. Modify the inventory.yml for your Raspberry Pi with script or manually:

     ```bash
     bash start.sh

3. Create vault file and passwords:

     ```bash
     bash vault.sh

## Tasks 📃

1. Move to ansible folder

     ``bash
     cd ansible

2. Update and upgrade raspberry

     ```bash
     ansible-playbook main.yml --tags update

3. Check disk status

     ```bash
     ansible-playbook main.yml --tags disk_status
    
4. Install docker and docker-compose

     ```bash
     ansible-playbook main.yml --tags docker

5. Install PiHole with docker-compose

     ```bash
     #modify vars/pihole.yml with your data

     ansible-playbook main.yml --tags pihole --vault-pass-file ~/.ansible/.secret_pi

6. Install InfluxDB with docker-compose

     ```bash
     #modify vars/influxdb.yml with your data

     ansible-playbook main.yml --tags influxdb --vault-pass-file ~/.ansible/.secret_pi

7. Install TeamSpeak server with docker-compose

     ```bash
     #modify vars/ts.yml with your data

     ansible-playbook main.yml --tags ts --vault-pass-file ~/.ansible/.secret_pi