#! /bin/bash

# copy over config to enable php in apache
sudo rm -rf /etc/apache2/mods-enabled/dir.conf
sudo cp /vagrant/vagrant_configs/dir.conf /etc/apache2/mods-enabled/dir.conf

echo "PHP Apache dir.conf config loaded."

# copy over the 000-default.conf files and apache2.conf files.
sudo rm -rf /etc/apache2/apache2.conf
sudo cp /vagrant/vagrant_configs/apache2.conf /etc/apache2/

echo "apache2.conf loaded in successfully."

# copy over the 000-default.conf file
sudo rm -rf /etc/apache2/sites-available/000-default.conf
sudo cp /vagrant/vagrant_configs/000-default.conf /etc/apache2/sites-available

echo "000-default file loaded in successfully."

sleep 1

sudo service apache2 restart