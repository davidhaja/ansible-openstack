# ansible-openstack

This repo contains an Ansible play, which install and configure OpenStack Newton to the given nodes.

On each server you must have Python 2.4 or later. If you not sure about your Python version type the following command.
```
sudo apt-get update;sudo apt-get install -y python ssh;
```
You have to enable sudo without password on hosts.
For this insert a line to /etc/sudoers like: 
```
<username>  ALL=(ALL) NOPASSWD:ALL
```
We’ll assume you are using SSH keys for authentication. To set up SSH agent to avoid retyping passwords, you can do:
```
ssh-keygen -t rsa
ssh-copy-id <username>@<ip>
```
Check if ansible can reach and use remote devices.
```
ansible -i hosts all -m ping -u <username>
```
If everything works start the playbook.
```
ansible-playbook -i hosts playbook.yml -f <Level of parallelism>
```
