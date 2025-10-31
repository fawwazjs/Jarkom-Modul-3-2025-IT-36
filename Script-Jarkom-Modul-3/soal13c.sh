#!/bin/bash

cat > /etc/nginx/sites-available/oropher <<'EOF'
server {
    listen 8006;
    server_name oropher.K36.com;

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