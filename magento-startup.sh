
apt install software-properties-common -y
add-apt-repository ppa:ondrej/php -y
apt update
apt-get update

#apt-get install apache2 php7.3 php7.3-xml libapache2-mod-php mysql-server php-mysql php-dom php-simplexml php-curl php-intl php-xsl php-mbstring php-zip php-xml composer
apt-get install -y apache2 php7.3 php7.3-xml php7.3-soap php7.3-bcmath php7.3-gd libapache2-mod-php mysql-server php7.3-mysql php7.3-dom php7.3-simplexml php7.3-curl php7.3-intl php7.3-xsl php7.3-mbstring php7.3-zip php7.3-xml

#install php's gd extension#
apt-get install php7.0-gd

#install php's mcrypt extension#
apt-get install php7.0-mcrypt

sudo a2enmod rewrite

cd /etc/apache2/

nano apache2.conf
#search for Indexes, then change AllowOverride from 'none' to 'all'

systemctl restart apache2.service


#clone magento file from git
git clone https://github.com/magento/magento2.git /var/www/html/magento2

cd /var/www/html/magento2

update-alternatives --set php /usr/bin/php7.
sudo chown -R magento:magento ~/.composer
chmod -R 777 ~/.composer

composer install

#allow access#
chmod -R 755 /var/www/html/magento2/
