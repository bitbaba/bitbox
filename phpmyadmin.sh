#!/bin/bash

# https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-phpmyadmin-on-ubuntu-12-04

#The easiest way to install phpmyadmin is through apt-get:

apt-get install phpmyadmin apache2-utils

#During the installation, phpMyAdmin will walk you through a basic configuration. 
#Once the process starts up, follow these steps:

#1) Select Apache2 for the server
#2) Choose YES when asked about whether to Configure the database for phpmyadmin with dbconfig-common
#3) Enter your MySQL password when prompted
#4) Enter the password that you want to use to log into phpmyadmin

#After the installation has completed, add phpmyadmin to the apache configuration.

#sudo nano /etc/apache2/apache2.conf
#Add the phpmyadmin config to the file.

#Include /etc/phpmyadmin/apache.conf
#Restart apache:

#sudo service apache2 restart
#You can then access phpmyadmin by going to youripaddress/phpmyadmin. The screen should look like this
