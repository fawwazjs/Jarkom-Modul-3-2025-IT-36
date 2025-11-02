#!/bin/bash

apt-get update
apt-get install mariadb-server -y

cat > /etc/mysql/mariadb.conf.d/50-server.cnf <<'EOF'
[mysqld]
server-id=1
log_bin=/var/log/mysql/mariadb-bin.log
bind-address=0.0.0.0
EOF

mkdir -p /var/log/mysql
chown mysql:mysql /var/log/mysql

service mariadb restart

mysql<<EOF
CREATE USER 'replica'@'192.229.4.103' IDENTIFIED BY 'replicaPass';
GRANT REPLICATION SLAVE ON *.* TO 'replica'@'192.229.4.103';
FLUSH PRIVILEGES;

SHOW MASTER STATUS;
EOF