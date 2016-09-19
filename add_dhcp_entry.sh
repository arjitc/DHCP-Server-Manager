#!/bin/bash
hostname=$1
mac_address=$2
ip_address=$3
subnet=$4
gateway=$5
sed -i "/#ipv4/a host $hostname {hardware ethernet $mac_address;fixed-address $ip_address;option subnet-mask $subnet;option routers $gateway;}" /etc/dhcp/dhcpd.conf
