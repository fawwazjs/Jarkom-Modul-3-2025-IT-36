#masing2 Elendil, ilsidur, Anarion
#nano /etc/nginx/sites-available/Laravel (nambahin k36.com sama (ilsidur\.k36\.com|elros\.k36\.com))

server {
    listen 8001;
    server_name ilsidur.k36.com elros.k36.com;
    root /var/www/laravel/public;

    index index.php index.html;

    access_log /var/log/nginx/ilsidur_access.log;
    error_log /var/log/nginx/ilsidur_error.log;

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
    if ($host !~ ^(ilsidur\.k36\.com|elros\.k36\.com)$) {
        return 403;
    }
}