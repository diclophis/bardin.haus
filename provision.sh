#!/bin/sh

set -x
set -e

. ~/.bardin-haus-env.sh

ansible-playbook -vvvv -i ansible/inventory/local ansible/provision-playbook.yml
