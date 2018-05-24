#!/bin/sh

set -x
set -e

. ~/.bardin-haus-env.sh

ansible-playbook -v -i ansible/inventory/bardin-haus ansible/install-playbook.yml
