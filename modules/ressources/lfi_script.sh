# before running this script make sure lfi.php is inside /var/www/html
# running as root & apache2, php installed

# install dependencies
apt-get -y install php7.2
apt-get -y install apache2
sleep 5
systemctl restart apache2



rm /var/www/html/index.html
mv /root/index.php /var/www/html/
mv /root/lfi.php /var/www/html/

echo "[*] restarting apache2"
systemctl restart apache2
echo "[*] sleeping for 5 sec..."
sleep 5
echo "[*] changing priority for /var/log/apache2"
chmod 775 -R /var/log/apache2/
echo "[*] finished"


