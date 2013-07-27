#!/bin/bash
sudo ln -s /etc/httpd/sites-available/default /etc/httpd/sites-enabled/default
sudo echo 'hello' > /var/www/html/index.html
sudo echo '<?php phpinfo(); ?>' > /var/www/html/phpinfo.php
sudo service iptables stop
sudo apachectl restart