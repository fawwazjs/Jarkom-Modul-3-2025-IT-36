#!/bin/bash

apt-get update
apt-get install mariadb-server -y

cat > /etc/mysql/mariadb.conf.d/50-server.cnf << 'EOF'
[mysqld]
server-id=2
relay_log=/var/log/mysql/mariadb-relay-bin.log
read_only=1
EOF

mkdir -p /var/log/mysql
chown mysql:mysql /var/log/mysql

service mariadb restart

mysql<<EOF
CHANGE MASTER TO
    MASTER_HOST='192.229.4.102',
    MASTER_USER='replica',
    MASTER_PASSWORD='replicaPass',
    MASTER_LOG_FILE='mariadb-bin.000001',
    MASTER_LOG_POS=1422;

START SLAVE;

UNLOCK TABLES;

SHOW SLAVE STATUS\G;

SHOW DATABASES;
USE K36DB;
SHOW TABLES;
SELECT * FROM users;
EOF
