#!/bin/bash

# Update and install nginx
apt-get update
apt-get install -y nginx git

# Clone the repository
git clone "$REPO_URL" /tmp/website

# Copy index.html to nginx directory
cp /tmp/website/index.html /var/www/html/index.html

# Cleanup
rm -rf /tmp/website

# Restart nginx
systemctl restart nginx

echo "Deployment complete! Check your website at http://your-server-ip"