#! /bin/bash

# copy over config to enable php in apache
sudo rm -rf /etc/apache2/mods-enabled/dir.conf
sudo cp /vagrant/vagrant_configs/dir.conf /etc/apache2/mods-enabled/dir.conf
sudo service apache2 restart

echo "PHP Apache dir.conf config loaded."