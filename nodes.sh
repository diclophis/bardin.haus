#!/bin/sh

set -x
set -e

#. ~/.bardin-haus-env.sh

ansible-playbook -vvvv -i ansible/inventory/bardin-haus.nodes ansible/nodes-playbook.yml
