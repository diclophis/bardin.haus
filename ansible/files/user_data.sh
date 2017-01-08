#!/bin/sh

set -e
set -x

# bootstrap apt, saves us headache when running futher ansible roles
sudo apt-get -qq update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -qq -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install -qq -y -o APT::Immediate-Configure=false python-minimal python-apt lzma apt-transport-https aptitude python-configobj openssh-server

touch /tmp/user_data_sh_finished
