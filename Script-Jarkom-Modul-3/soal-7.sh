#!/bin/bash
# /root/setup-laravel.sh
# add script ke masing2 node (Elendil, Ilsidur, Anarion)

set -e

IP_ADDR=$(hostname -I | awk '{print $1}')
APP_DIR="/var/www/laravel"
REPO_URL="https://github.com/elshiraphine/laravel-simple-rest-api.git"
NGINX_LOG="/var/log/nginx/error.log"

echo "=========================================="
echo "[*] Memulai instalasi Laravel Worker di $IP_ADDR"
echo "=========================================="

# Update system
apt update -y
apt install -y curl git unzip nginx php8.4 php8.4-cli php8.4-fpm php8.4-xml php8.4-mbstring php8.4-mysql php8.4-curl php8.4-zip php8.4-bcmath composer

# Pastikan service PHP-FPM & Nginx berjalan
service php8.4-fpm start || true
service nginx start || true

# Hapus konfigurasi default nginx
rm -f /etc/nginx/sites-enabled/default

# Buat direktori Laravel
mkdir -p $APP_DIR
cd /var/www

# Clone repository Laravel
echo "[*] Mengunduh source Laravel dari Resource..."
git clone $REPO_URL laravel

cd $APP_DIR

# Install dependensi Laravel dengan toleransi PHP 8.4
echo "[*] Menginstal dependensi Laravel..."
composer install --no-interaction --prefer-dist --ignore-platform-reqs

# Setup environment Laravel
echo "[*] Konfigurasi environment Laravel..."
cp .env.example .env || true
php artisan key:generate || true

# Permission untuk Laravel
chown -R www-data:www-data $APP_DIR
chmod -R 775 $APP_DIR/storage $APP_DIR/bootstrap/cache

# Konfigurasi Nginx untuk Laravel
cat > /etc/nginx/sites-available/laravel <<EOF
server {
    listen 80;
    server_name _;
    root $APP_DIR/public;

    index index.php index.html;

    access_log /var/log/nginx/access.log;
    error_log /var/log/nginx/error.log;

    location / {
        try_files \$uri \$uri/ /index.php?\$query_string;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.4-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }
}
EOF

ln -sf /etc/nginx/sites-available/laravel /etc/nginx/sites-enabled/laravel

# Uji dan restart Nginx
nginx -t && service nginx restart

echo "=========================================="
echo "[OK] Laravel Worker setup selesai di $IP_ADDR"
echo "[OK] Akses melalui: http://$IP_ADDR"
echo "[INFO] Log error: $NGINX_LOG"
echo "[INFO] Test dari client: lynx http://$IP_ADDR"
echo "=========================================="



# di client:
#apt update
#apt install -y lynx