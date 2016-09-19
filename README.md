# DHCP Server Manager
Easy to use bash toolset to manage your DHCP Server on Linux

## Starting off

    edit /etc/dhcp/dhcpd.conf

Make sure it contains,

    ddns-update-style none;
    default-lease-time 600;
    max-lease-time 7200;
    log-facility local7;
    option rfc3442-classless-static-routes code 121 = array of integer 8;
    option ms-classless-static-routes code 249 = array of integer 8;

    subnet 0.0.0.0 netmask 0.0.0.0 {
    authoritative;
    default-lease-time 21600000;
    max-lease-time 432000000;
    option domain-name-servers 8.8.8.8,4.2.2.1;
    option rfc3442-classless-static-routes 32, 192, 168, 0, 5, 0, 0, 0, 0, 0, 192, 168, 0, 5;
    option ms-classless-static-routes 32, 192, 168, 0, 5, 0, 0, 0, 0, 0, 192, 168, 0, 5;
    #ipv4
    
    }

## Adding an entry

    sh add_dhcp_entry.sh HOSTNAME MAC_ADDRESS IP_ADDRESS SUBNET GATEWAY
