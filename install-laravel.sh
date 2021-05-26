#! /bin/bash

# Update the system 
sudo apt-get update -y

# install nginx
sudo apt-get install nginx -y

# add required packages 
sudo apt install zip unzip software-properties-common -y

# Add repository
sudo add-apt-repository ppa:ondrej/php

# update 
sudo apt-get update

# install php 7.4
sudo apt install -y php7.4 php7.4-fpm php7.4-gd php7.4-mbstring php7.4-xml php7.4-zip php7.4-mysql -y

# download and install composer 
curl -sS https://getcomposer.org/installer | php

# make composer accessable by all users 
sudo mv composer.phar /usr/local/bin/composer

# add composer to user 
sudo chmod +x /usr/local/bin/composer

# add node source 
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh

# setup node source 
sudo bash nodesource_setup.sh

# install node 
sudo apt install nodejs

