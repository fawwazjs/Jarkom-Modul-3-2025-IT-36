#!/bin/bash

cat > /etc/dhcp/dhcpd.conf << 'EOF'
max-lease-time 3600;
authoritative;

subnet 192.229.1.0 netmask 255.255.255.0 {
    option routers 192.229.1.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.1.255;
    option domain-name-servers 192.229.5.101;
    default-lease-time 1800;
    range 192.229.1.6 192.229.1.34;
    range 192.229.1.68 192.229.1.94;
}

subnet 192.229.2.0 netmask 255.255.255.0 {
    option routers 192.229.2.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.2.255;
    option domain-name-servers 192.229.5.101;
    default-lease-time 600;
    range 192.229.2.35 192.229.2.67;
    range 192.229.2.96 192.229.2.121;
}

subnet 192.229.3.0 netmask 255.255.255.0 {
    option routers 192.229.3.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.3.255;
    option domain-name-servers 192.229.5.101;
}

host Khamul {
    hardware ethernet 02:42:4c:b6:e5:00;
    fixed-address 192.229.3.95;
}

subnet 192.229.4.0 netmask 255.255.255.0 {
    option routers 192.229.4.1;
    option subnet-mask 255.255.255.0;
    option broadcast-address 192.229.4.255;
    option domain-name-servers 192.229.5.101;
}
EOF

service isc-dhcp-server restart