#!/bin/bash

cat > /etc/nginx/sites-available/celeborn <<'EOF'
server {
    listen 8005;
    server_name celeborn.K36.com;

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

service php8.4-fpm restart
service nginx restart