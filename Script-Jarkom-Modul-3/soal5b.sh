#!/bin/bash

cat >> /etc/bind/named.conf.local <<'EOF'

zone "3.229.192.in-addr.arpa" {
        type slave;
        masters { 192.229.3.101; };
        file "/etc/bind/ns1/3.229.192.in-addr.arpa";
};
EOF

service bind9 restart