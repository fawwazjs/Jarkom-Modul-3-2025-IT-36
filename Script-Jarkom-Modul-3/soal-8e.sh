# Koneksi dari Client (Miriel, dll)
nano /etc/hosts

# tambahin
# 192.229.1.101 elendil.k36.com
# 192.229.1.102 isildur.k36.com
# 192.229.1.103 anarion.k36.com

# lalu tes:
lynx http://elendil.k36.com:8001
lynx http://isildur.k36.com:8002
lynx http://anarion.k36.com:8003

# coba lynx http://192.229.1.101:8001 bakal 403 forbidden