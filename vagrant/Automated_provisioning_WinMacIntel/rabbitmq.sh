#!/bin/bash

export LC_ALL="en_US.UTF-8"

sudo yum install epel-release -y
sudo yum update -y
sudo yum install wget -y
cd /tmp/ || exit
dnf -y install centos-release-rabbitmq-38
sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-Messaging-rabbitmq.repo
dnf --enablerepo=centos-rabbitmq-38,powertools -y install rabbitmq-server
systemctl enable --now rabbitmq-server
firewall-cmd --add-port=5672/tcp
firewall-cmd --runtime-to-permanent
sudo systemctl start rabbitmq-server
sudo systemctl enable rabbitmq-server
sudo systemctl status rabbitmq-server
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo systemctl restart rabbitmq-server
