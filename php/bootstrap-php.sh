#!/bin/sh
# Create the folder
mkdir -p /var/www/html

# Create an empty Symfony project
cd /var/www/html/
composer create-project symfony/skeleton . 

# Since this is a dev tool, I don't care about the permissions
# So the folder html is deletable externally
chmod -R 777 /var/www/html
chown -R www-data:www-data /var/www/html

# !! This is the last line !!
# If you don't run the process in the foreground, the container will exit with code 0
php-fpm -F
