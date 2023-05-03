#!/usr/bin/env bash
<<<<<<< HEAD
# sets up your web servers for the deployment of web_static
apt-get -y update
apt-get -y install nginx
ufw allow 'Nginx HTTP'
mkdir -p /data/web_static/
mkdir -p /data/web_static/releases/test/
mkdir -p /data/web_static/shared/
echo "<html>
  <head>
  </head>
  <body>
    Holberton School
  </body>
</html>" > /data/web_static/releases/test/index.html
ln -sf /data/web_static/releases/test /data/web_static/current
chown -R ubuntu:ubuntu /data
sed -i '/listen 80 default_server/a location /hbnb_static/ { alias /data/web_static/current/;}' /etc/nginx/sites-available/default
=======
<<<<<<< HEAD
# a Bash script that sets up your web servers for the deployment of web_static

apt-get update
apt-get -y install nginx
# Install Nginx if it not already installed
mkdir -p /data/web_static/releases/test/
# Create the folder /data/ if it doesnt already exist
# Create the folder /data/web_static/ if it doesnt already exist
# Create the folder /data/web_static/releases/ if it doesnt already exist
# Create the folder /data/web_static/releases/test/ if it doesnt already exist
mkdir -p /data/web_static/shared/
# Create the folder /data/web_static/shared/ if it doesnt already exist
echo '<html>
  <head>
  </head>
  <body>
    Holberton School
  </body>
</html>' > /data/web_static/releases/test/index.html
# Create a fake HTML file /data/web_static/releases/test/index.html
ln -sf /data/web_static/releases/test/ /data/web_static/current
# Create a symbolic link /data/web_static/current linked to the...
# .../data/web_static/releases/test/ folder. If the symbolic link already...
# ...exists, it should be deleted and recreated every time the script is ran.
chown -hR ubuntu:ubuntu /data/
# Give ownership of the /data/ folder to the ubuntu user AND group (you can
# assume this user and group exist). This should be recursive; everything
# inside should be created/owned by this user/group.
sed -i '51 i \\n\tlocation /hbnb_static {\n\talias /data/web_static/current;\n\t}' /etc/nginx/sites-available/default
# Update the Nginx configuration to serve the content of
# /data/web_static/current/ to hbnb_static
# (ex: https://mydomainname.tech/hbnb_static).
# Dont forget to restart Nginx after updating the configuration:
=======
# Sets up a web server for deployment of web_static.

apt-get update
apt-get install -y nginx

mkdir -p /data/web_static/releases/test/
mkdir -p /data/web_static/shared/
echo "Holberton School" > /data/web_static/releases/test/index.html
ln -sf /data/web_static/releases/test/ /data/web_static/current

chown -R ubuntu /data/
chgrp -R ubuntu /data/

printf %s "server {
    listen 80 default_server;
    listen [::]:80 default_server;
    add_header X-Served-By $HOSTNAME;
    root   /var/www/html;
    index  index.html index.htm;

    location /hbnb_static {
        alias /data/web_static/current;
        index index.html index.htm;
    }

    location /redirect_me {
        return 301 http://cuberule.com/;
    }

    error_page 404 /404.html;
    location /404 {
      root /var/www/html;
      internal;
    }
}" > /etc/nginx/sites-available/default

>>>>>>> 4c501d4f22acaa3fa758c7957ef0e0ec15597e8a
>>>>>>> f1e93428c3563f207510e4fb87b83795ebfa69cf
service nginx restart
exit 0

