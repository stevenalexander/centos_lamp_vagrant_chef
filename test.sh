#!/bin/bash
sudo ln -s /etc/httpd/sites-available/default /etc/httpd/sites-enabled/default
sudo echo 'hello' > /var/www/html/index.html
sudo service iptables stop
sudo apachectl restart