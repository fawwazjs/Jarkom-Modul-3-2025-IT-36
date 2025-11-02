PalantirDatabaseServer (192.229.4.102)
nano /root/setup-Palantir.sh

#!/bin/bash

set -e

DB_NAME="laravel_db"
DB_USER="laravel_user"
DB_PASS="laravelpass"

echo "=========================================="
echo "[*] Memulai instalasi dan konfigurasi Database Palantir"
echo "=========================================="

# Update dan install MariaDB
apt update -y
apt install -y mariadb-server

# Jalankan service MariaDB
service mariadb start || true

# Konfigurasi database dan user
echo "[*] Membuat database dan user untuk Laravel..."
mysql <<MYSQL_SCRIPT
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

# Ubah konfigurasi agar bisa diakses dari luar
echo "[*] Mengubah konfigurasi MariaDB agar menerima koneksi remote..."
CONF_FILE="/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i 's/^bind-address\s*=.*$/#bind-address = 0.0.0.0/' $CONF_FILE
echo "bind-address = 0.0.0.0" >> $CONF_FILE

# Restart MariaDB
service mariadb restart

# Tampilkan status koneksi
echo "=========================================="
echo "[OK] Database Palantir siap digunakan"
echo "[INFO] Host : 192.229.4.102"
echo "[INFO] DB Name : ${DB_NAME}"
echo "[INFO] DB User : ${DB_USER}"
echo "[INFO] DB Pass : ${DB_PASS}"
echo "[INFO] Port : 3306"
echo "=========================================="

# Tes port 3306
ss -tulnp | grep 3306 || echo "[WARN] Port 3306 belum aktif, periksa konfigurasi mariadb."
