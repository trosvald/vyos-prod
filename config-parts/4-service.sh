#!/bin/vbash
# shellcheck disable=all

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server time.google.com prefer
set service ntp server time.cloudflare.com
set service ntp server ntp.bsn.go.id 

# SSH server
set service ssh disable-password-authentication
set service ssh port '22'

# TFTP server
set service tftp-server directory '/config/tftpboot'
set service tftp-server listen-address 172.16.10.254

# UDP Broadcast-Relay
# set service broadcast-relay id 1 description 'Sonos'
# set service broadcast-relay id 1 interface 'eth1.20'
# set service broadcast-relay id 1 interface 'eth1.40'
# set service broadcast-relay id 1 port '1900'

# mDNS Repeater
# set service mdns repeater interface 'bond0.1612'
# set service mdns repeater interface 'bond0.1613'
# set service mdns repeater interface 'bond0.1614'
