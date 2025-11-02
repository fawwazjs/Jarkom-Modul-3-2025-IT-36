#!/bin/bash

tail -n 20 /var/log/nginx/access.log

service nginx stop