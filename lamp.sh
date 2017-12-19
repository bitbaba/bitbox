#!/bin/bash

#https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu

# apt-get update

# for Apache2
apt-get install apache2


# for MySQL 
apt-get install mysql-server php5-mysql


# Once you have installed MySQL, we should activate it with this command:
mysql_install_db

# Finish up by running the MySQL set up script:
# the `root' means root user of MySQL
mysql_secure_installation

# To install PHP, open terminal and type in this command.

apt-get install php5 libapache2-mod-php5 php5-mcrypt

#
#It may also be useful to add php to the directory index, to serve the relevant php index files:
#
#sudo nano /etc/apache2/mods-enabled/dir.conf
#Add index.php to the beginning of index files. The page should now look like this:
#
#<IfModule mod_dir.c>
#
#         DirectoryIndex index.php index.html index.cgi index.pl index.php index.xhtml index.htm
#
#</IfModule>

#PHP Modules
#PHP also has a variety of useful libraries and modules that you can add onto your virtual server. 
#You can see the libraries that are available.
#
#apt-cache search php5-

# Default root of apache2 is /var/www/html
