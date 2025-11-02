#masuk ke Elros
#nano /root/setup-elros.sh

#!/bin/bash
apt-get update
apt-get install nginx -y

cat > /etc/nginx/sites-available/elros.k36.com <<'EOF'
upstream kesatria_numenor {
    server 192.229.1.101:8001;
    server 192.229.1.102:8002;
    server 192.229.1.103:8003;
}

server {
    listen 80;
    server_name elros.k36.com;

    access_log /var/log/nginx/elros_access.log;
    error_log /var/log/nginx/elros_error.log;

    location / {
        proxy_pass http://kesatria_numenor;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
EOF

ln -s /etc/nginx/sites-available/elros.k36.com /etc/nginx/sites-enabled/
rm -f /etc/nginx/sites-enabled/default
nginx -t && service nginx restart

echo "=========================================="
echo "[OK] Reverse proxy Elros aktif"
echo "[INFO] Domain  : elros.k36.com"
echo "[INFO] Backend : kesatria_numenor (3 Laravel workers)"
echo "[INFO] Log     : /var/log/nginx/elros_error.log"
echo "=========================================="



masuk ke /etc/nginx/sites-available/elros.k36.com
pstream kesatria_numenor {
    server 192.229.1.101:8001;
    server 192.229.1.102:8002;
    server 192.229.1.103:8003;
}

map $upstream_addr $target_host {
    "192.229.1.101:8001" "elendil.k36.com";
    "192.229.1.102:8002" "isildur.k36.com";
    "192.229.1.103:8003" "anarion.k36.com";
}

server {
    listen 80;
    server_name elros.k36.com;

    access_log /var/log/nginx/elros_access.log;
    error_log /var/log/nginx/elros_error.log;

    location / {
        proxy_pass http://kesatria_numenor;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

nginx -t && service nginx restart


#masuk ke node Client Miriel
#lynx http://elros.k36.com atau curl http://elros.k36.com/api/airing