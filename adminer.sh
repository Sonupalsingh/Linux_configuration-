##########adminer for sql##########
##Step 1: Update System
sudo yum update -y



##Step 2: Install Apache Web Server
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd



##Step 3: Install PHP
sudo yum install php php-mysqlnd -y
sudo systemctl restart httpd


##Step 4: Download Adminer
sudo mkdir -p /var/www/html/adminer
#sudo curl -o /var/www/html/adminer/index.php 
##sudo mkdir /var/www/html/adminer
sudo wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
sudo mv  adminer-4.8.1.php  /var/www/html/adminer/index.php

##https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

##Step 5: Adjust Permissions
sudo chown -R apache:apache /var/www/html/adminer
sudo chmod -R 755 /var/www/html/adminer


###Step 6: Configure Firewall
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload






##############################################################
