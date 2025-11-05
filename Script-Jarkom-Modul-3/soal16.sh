#!/bin/bash

apt-get update
apt-get install nginx -y

cat > /etc/nginx/conf.d/upstream.conf <<'EOF'
upstream Kesatria_Lorien {
    server galadriel.K36.com:8004;
    server celeborn.K36.com:8005;
    server oropher.K36.com:8006;
    keepalive 16;
}
EOF

cat > /etc/nginx/sites-available/pharazon <<'EOF'
server {
    listen 80;
    server_name pharazon.K36.com;

    resolver 192.229.5.101 valid=300s;
    
    location / {
        proxy_pass http://Kesatria_Lorien;
        proxy_http_version 1.1;
        
        proxy_set_header Host $host;
        
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Proto $scheme;

        proxy_set_header Authorization $http_authorization;
    }
}
EOF

ln -s /etc/nginx/sites-available/pharazon /etc/nginx/sites-enabled/
rm -f /etc/nginx/sites-enabled/default
service nginx restart
