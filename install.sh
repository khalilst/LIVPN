#!/bin/bash

sudo apt update
sudo apt -y upgrade
sudo apt install --no-install-recommends -y openvpn squid3 dante-server multitail pptp-linux
reboot