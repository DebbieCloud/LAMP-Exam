#!/bin/bash

# Uninstall Apache and purge its configuration files
sudo apt-get purge apache2 apache2-utils -y

# Uninstall MySQL and purge its configuration files
sudo apt-get purge mysql-server mysql-client mysql-common -y
sudo apt-get autoremove -y
sudo apt-get autoclean

# Uninstall PHP and purge its configuration files
sudo apt-get purge php8.3 libapache2-mod-php8.3 php8.3-mysql php8.3-curl php8.3-gd php8.3-intl php8.3-mbstring php8.3-xml php8.3-zip -y

# Delet the clone github repository
sudo apt rm -rf https://github.com/laravel/laravel.git

# Remove any remaining dependencies that are no longer required
sudo apt-get autoremove -y


echo "LAMP stack components have been uninstalled and purged."
