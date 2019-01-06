#!/bin/bash

sudo yum update -yum;

sudo yum install epel-release -y;

sudo yum install nginx -y; 

systemctl start nginx;

systemctl enable nginx; 

sudo yum install firewalld -yum;

systemctl firewalld start;

systemctl firewalld enable;

sudo firewall-cmd --add-port=80/tcp --permanent;

sudo firewall-cmd --add-port=443/tcp --permanent;

sudo firewall-cmd --reload;

systemctl status nginx;

systemctl status firewalld;