#!/bin/bash

cat > /etc/nginx/sites-available/galadriel <<'EOF'
server {
    listen 8004;
    server_name galadriel.K36.com;

    auth_basic on;
    auth_basic_user_file /etc/nginx/.htpasswd;

    root /var/www/html;
    index index.php;

    location / {
        try_files $uri $uri/ /index.php$is_args$args;
    }

    location ~ \.php$ {
        fastcgi_param X-Real-IP $remote_addr;
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php8.4-fpm.sock;
    }
}
EOF

cat > /var/www/html/index.php <<'EOF'
<?php
$hostname = gethostname();
$client_ip = $_SERVER['REMOTE_ADDR'] ?? '???';
echo "Hostname: $hostname\n";
echo "Client IP: $client_ip\n";
?>
EOF

service php8.4-fpm restart
service nginx restart