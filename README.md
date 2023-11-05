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

2. Modify the inventory.yml for your Raspberry Pi:

     ```bash
   raspberry-pi:
     hosts:
      <raspiberry-pi ip or hostname if dns>:
        ansible_ssh_user: <raspberry-pi user>
        ansible_ssh_private_key_file: <path to your ssh key>