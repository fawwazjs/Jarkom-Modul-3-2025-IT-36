#!/bin/bash

apt-get update
apt-get install nginx php-fpm -y

mkdir -p /var/www/html/

echo "<?php echo gethostname(); ?>" > /var/www/html/index.php

cat > /etc/nginx/sites-available/galadriel <<'EOF'
server {
    listen 80;
    server_name galadriel.K36.com;

    root /var/www/html;
    index index.php;

    location / {
        try_files $uri $uri/ /index.php$is_args$args;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.4-fpm.sock;
    }
}
EOF

cat > /etc/nginx/sites-available/reject <<'EOF'
server {
    listen 80 default_server;
    server_name _;

    return 404;
}
EOF

ln -s /etc/nginx/sites-available/galadriel /etc/nginx/sites-enabled/
ln -s /etc/nginx/sites-available/reject /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
service php8.4-fpm restart
service nginx restart