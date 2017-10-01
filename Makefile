# Makefile for common tasks

all:
	sh provision.sh
	sh install.sh

nodes:
	sh nodes.sh
