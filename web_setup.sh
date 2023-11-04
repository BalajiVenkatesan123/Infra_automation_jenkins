#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
unzip -o 2136_kool_form_pack.zip
sudo cp -r 2136_kool_form_pack/* /var/www/html/
sudo systemctl restart httpd