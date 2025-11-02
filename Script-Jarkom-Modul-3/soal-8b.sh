# Konfig Laravel Worker (Elendil, Isildur, Anarion)

# cd /var/www/laravel
# nano .env

# DB_CONNECTION=mysql
# DB_HOST=192.229.4.102
# DB_PORT=3306
# DB_DATABASE=laravel_db
# DB_USERNAME=laravel_user
# DB_PASSWORD=laravelpass

# cd

# Elendil (/etc/nginx/sites-available/laravel)
server {
    listen 8001;
    server_name elendil.k36.com;
    root /var/www/laravel/public;

    index index.php index.html;

    access_log /var/log/nginx/elendil_access.log;
    error_log /var/log/nginx/elendil_error.log;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.4-fpm.sock;
    }

    location ~ /\.ht {
        deny all;
    }

    # Blok akses via IP
    if ($host !~ ^elendil\.k36\.com$) {
        return 403;
    }
}

# masing2 node:
ln -sf /etc/nginx/sites-available/laravel /etc/nginx/sites-enabled/Laravel
nginx -t && service nginx restart

cd /var/www/laravel
php artisan migrate --seed