ansible-playbook ./azure-playbooks/vm_web.yml --extra-vars "vmname=$1 resgrp=$2"
# At this point the VM is new, we need to skip the known_hosts check
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook -i ./azure_rm.py azure-playbooks/httpd.yml --extra-vars "vmname=$1"
