#!/bin/bash
sudo ln -s /vagrant/default-sites-enabled.conf /etc/httpd/sites-enabled/000-default
sudo service iptables stop
sudo apachectl restart