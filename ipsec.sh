#!/bin/bash

echo '*****************************'
echo '******** Start IPSec ********'
echo '*****************************'

mv -f /etc/ipsec.conf /etc/orig.ipsec.conf
cat > /etc/ipsec.conf << EOF
config setup

conn myvpn
  auto=add
  authby=secret
  ike=3des-sha1-modp1024!
  esp=3des-md5!
  keyexchange=ikev1
  left=%defaultroute
  right=$HOST
  type=transport
EOF
echo "'/etc/ipsec.conf' created"

mv -f /etc/ipsec.secrets /etc/orig.ipsec.secrets
cat > /etc/ipsec.secrets << EOF
%any $HOST : PSK "$PSK"
EOF
echo "'/etc/ipsec.secrets' created"

echo "-------------------------------"

/usr/sbin/ipsec down myvpn
/usr/sbin/ipsec restart
sleep 5
/usr/sbin/ipsec up myvpn
sleep 5
/usr/sbin/ipsec status