#!/bin/sh

set -x
set -e

. ~/.bardin-haus-env.sh

#ansible-playbook -vvvv -i ansible/inventory/local ansible/provision-playbook.yml
ansible-playbook -vvvv -i ansible/inventory/bardin-haus ansible/install-playbook.yml
