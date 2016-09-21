#!/bin/bash
hostname=$1
sed -i "/$hostname/d" /etc/dhcp/dhcpd.conf
service dhcpd restart
