#!/bin/sh

set -x
set -e

. ~/.bardin-haus-env.sh

ansible-playbook -v -i ansible/inventory/local ansible/provision-playbook.yml
