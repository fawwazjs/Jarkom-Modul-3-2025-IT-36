#!/bin/bash

cat > /etc/dnsmasq.conf << 'EOF'
no-resolv
no-poll

interface=eth0
bind-interfaces
server=/K36.com/192.229.3.101
server=/K36.com/192.229.3.102
server=/3.229.192.in-addr.arpa/192.229.3.101
server=/3.229.192.in-addr.arpa/192.229.3.102
server=192.168.122.1
log-queries
log-facility=/var/log/dnsmasq.log
neg-ttl=60
cache-size=500
EOF

service dnsmasq restart
