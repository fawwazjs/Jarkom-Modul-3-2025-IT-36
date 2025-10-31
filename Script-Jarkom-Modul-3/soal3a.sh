#!/bin/bash

apt-get update
apt-get install dnsmasq -y

cat > /etc/dnsmasq.conf << 'EOF'
no-resolv
no-poll

interface=eth0
bind-interfaces
server=192.168.122.1
log-queries
log-facility=/var/log/dnsmasq.log
neg-ttl=60
cache-size=500
EOF

sysctl -p
service dnsmasq restart
