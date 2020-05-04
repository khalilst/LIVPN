#!/bin/bash

echo '*****************************'
echo '******** Stop IPSec ********'
echo '*****************************'

/usr/sbin/ipsec down myvpn
/usr/sbin/ipsec stop
service network-manager restart
