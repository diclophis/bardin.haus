#!/bin/bash

BASE_OPENVPN=$1
CA_CERT=$2
CERT=$3
KEY=$4
TLS=$5
FINAL_OPENVPN=$6

echo -e "`cat ${BASE_OPENVPN}`\n\n<ca>\n`cat ${CA_CERT}`\n</ca>\n\n<cert>\n`cat ${CERT}`\n</cert>\n\n<key>\n`cat ${KEY}`\n</key>\n\n<tls-auth>\n`cat ${TLS}`\n</tls-auth>">$FINAL_OPENVPN
