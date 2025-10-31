#!/bin/bash

cat > /etc/bind/ns1/K36.com <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100402 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.
@       IN      NS      ns2.K36.com.

ns1         IN      A       192.229.3.101  ; IP Erendis
ns2         IN      A       192.229.3.102  ; IP Amdir
@           IN      A       192.229.3.101  ; IP Erendis

elendil     IN      A       192.229.1.101  ; IP Elendil
isildur     IN      A       192.229.1.102  ; IP Isildur
anarion     IN      A       192.229.1.103  ; IP Anarion
elros       IN      A       192.229.1.105  ; IP Elros
galadriel   IN      A       192.229.2.101  ; IP Galadriel
celeborn    IN      A       192.229.2.102  ; IP Celeborn
oropher     IN      A       192.229.2.103  ; IP Oropher
pharazon    IN      A       192.229.2.105  ; IP Pharazon
palantir    IN      A       192.229.4.102  ; IP Palantir

www         IN      CNAME   K36.com.

elros       IN      TXT    "Cincin Sauron"
pharazon    IN      TXT    "Aliansi Terakhir"
EOF

cat >> /etc/bind/named.conf.local <<'EOF'

zone "3.229.192.in-addr.arpa" {
        type master;
        file "/etc/bind/ns1/3.229.192.in-addr.arpa";
        allow-transfer { 192.229.3.102; };
        also-notify { 192.229.3.102; };
        notify yes;
};
EOF

cat > /etc/bind/ns1/3.229.192.in-addr.arpa <<'EOF'
$TTL    604800          ; Waktu cache default (detik)
@       IN      SOA     ns1.K36.com. root.K36.com. (
                        2025100401 ; Serial (format YYYYMMDDXX)
                        604800     ; Refresh (1 minggu)
                        86400      ; Retry (1 hari)
                        2419200    ; Expire (4 minggu)
                        604800 )   ; Negative Cache TTL
;

@       IN      NS      ns1.K36.com.
@       IN      NS      ns2.K36.com.

101     IN      PTR     ns1.K36.com.
102     IN      PTR     ns2.K36.com.
EOF

service bind9 restart