#!/bin/bash

apt-get update
apt-get install isc-dhcp-relay -y

cat > /etc/default/isc-dhcp-relay << 'EOF'
SERVERS="192.229.4.101"
INTERFACES="eth1 eth2 eth3 eth4 eth5"
OPTIONS=""
EOF

cat > /etc/sysctl.conf << 'EOF'
net.ipv4.ip_forward=1
EOF

sysctl -p
service isc-dhcp-relay restart