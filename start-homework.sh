#!/usr/bin/env bash
# Copy, adjust and run an Ansible file
echo "Copy adjusted hosts file to /etc/ansible/hosts."
cp /root/ocp-homework/hosts /etc/ansible/hosts

echo "Update the users GUID to generate the inventory."
GUID=`hostname|awk -F. '{print $2}'`
sed -i "s/GUID/$GUID/g" /etc/ansible/hosts

echo "Use Anslible Playbook to run the installation."
ansible-playbook -v -f 20 ocp-homework.yaml
