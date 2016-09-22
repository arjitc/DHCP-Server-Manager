# DHCP Server Manager
Easy to use bash toolset to manage your DHCP Server on Linux

## Starting off

    edit /etc/dhcp/dhcpd.conf

Make sure it contains,

    subnet 0.0.0.0 netmask 0.0.0.0 {
    authoritative;
    default-lease-time 21600000;
    max-lease-time 432000000;
    }
    ddns-update-style ad-hoc;
    #ipv4


The "#ipv4" part is an "indicator" to sed (used in add_dhcp_entry.sh) to insert the DHCP host entries below this line.

## Adding an entry

    sh add_dhcp_entry.sh HOSTNAME MAC_ADDRESS IP_ADDRESS SUBNET GATEWAY

For example,

    sh add_dhcp_entry.sh computer1 AA:BB:CC:DD:EE:FF 192.168.0.2 255.255.255.0 192.168.0.1
    
This will assign the host "computer1" with MAC address "AA:BB:CC:DD:EE:FF", IP address "192.168.0.2", subnet "255.255.255.0" and gateway "192.168.0.1"

## Removing an entry

    sh remove_dhcp_entry.sh HOSTNAME
    
For example,

    sh remove_dhcp_entry.sh computer1

This will remove the entry for "computer1" and restart dhcpd
