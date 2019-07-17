# Install nginx on ubuntu
apt-get update
apt-get install nginx
sudo /etc/init.d/nginx start
sudo service nginx status
service --status-all

# this folder contains server blocks (similar to virtual hosts in Apache)
# https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-18-04-quickstart
cd /etc/nginx/sites-available/
cat default

# this files by default includes server blocks in sites-enabled 
cd /etc/nginx/nginx.conf

# make changes and create symlinks
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
service nginx restart or service nginx reload or /etc/init.d/nginx reload

# Helpful links
https://certbot.eff.org/
https://www.linode.com/docs/web-servers/nginx/how-to-configure-nginx/
https://mediatemple.net/community/products/developer/204405534/install-nginx-on-ubuntu
https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-ubuntu-16-04