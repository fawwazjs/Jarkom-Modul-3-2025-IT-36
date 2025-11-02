#!/bin/bash

apt-get update
apt-get install apache2-utils -y

ab -n 300 -c 10 -A noldor:silvan http://pharazon.K36.com/