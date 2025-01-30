#!/bin/bash

# Update and install nginx
apt-get update
apt-get install -y nginx git

# Clone the repository
git clone "https://github.com/MustaphaAgboola/configure_nginx_w_bash" /my_website

# Copy index.html to nginx directory
cp /my_website/index.html /var/www/html/index.html


# Restart nginx
systemctl restart nginx

