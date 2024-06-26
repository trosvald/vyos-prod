#!/bin/vbash
# shellcheck disable=all

# SSH server
set service ssh disable-password-authentication

# LAN2 DHCP server
# set service dhcp-server dynamic-dns-update
set service dhcp-server global-parameters 'option system-arch code 93 = unsigned integer 16;'
# set service dhcp-server global-parameters 'option omada-address code 138 = ip-address;'
#set service dhcp-server global-parameters 'key ddnsupdate { algorithm hmac-sha256; secret ${SECRET_DDNS_UPDATE_KEY}; };'
#set service dhcp-server global-parameters 'zone ${SECRET_DOMAIN00}. { primary 172.16.16.3; key ddnsupdate; }'
#set service dhcp-server global-parameters 'ddns-domainname &quot;.&quot;;'
#set service dhcp-server global-parameters 'ddns-rev-domainname &quot;in-addr.arpa.&quot;;'
#set service dhcp-server global-parameters 'zone in-addr.arpa. { primary 172.16.16.3; key ddnsupdate; }'
#set service dhcp-server global-parameters 'zone 16.172.in-addr.arpa. { primary 172.16.16.3; key ddnsupdate; }'
#set service dhcp-server global-parameters 'update-optimization false;'
set service dhcp-server host-decl-name
set service dhcp-server hostfile-update

# CCTV VLAN
set service dhcp-server shared-network-name CCTV authoritative
set service dhcp-server shared-network-name CCTV ping-check
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 default-router '172.16.14.254'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 domain-name "${SECRET_DOMAIN0}"
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 lease '86400'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 name-server '172.16.16.5'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 range 0 start '172.16.14.200'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 range 0 stop '172.16.14.253'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc01 ip-address '172.16.14.101'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc01 mac-address 'fc:b6:9d:76:be:d2'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc02 ip-address '172.16.14.102'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc02 mac-address 'fc:b6:9d:76:be:d0'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc03 ip-address '172.16.14.103'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc03 mac-address 'e4:f1:4c:46:08:d9'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc04 ip-address '172.16.14.104'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc04 mac-address 'a0:bd:1d:03:b8:b5'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc05 ip-address '172.16.14.105'
set service dhcp-server shared-network-name CCTV subnet 172.16.14.0/24 static-mapping ipc05 mac-address 'a0:bd:1d:03:b7:5b'

# HOME VLAN
set service dhcp-server shared-network-name HOME authoritative
set service dhcp-server shared-network-name HOME ping-check
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 default-router '172.16.12.254'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 domain-name "${SECRET_DOMAIN0}"
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 lease '86400'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 name-server '172.16.16.5'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 range 0 start '172.16.12.200'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 range 0 stop '172.16.12.253'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping ezky-galaxy-s20 ip-address '172.16.12.104'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping ezky-galaxy-s20 mac-address 'f2:42:70:72:49:93'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping ezky-laptop-wifi ip-address '172.16.12.105'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping ezky-laptop-wifi mac-address '10:b1:df:d4:bb:d1'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping ezzel-p30-pro ip-address '172.16.12.101'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping ezzel-p30-pro mac-address '72:93:59:73:71:e4'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping printer763A3E1B ip-address '172.16.12.100'
set service dhcp-server shared-network-name HOME subnet 172.16.12.0/24 static-mapping printer763A3E1B mac-address '3c:55:76:3a:3e:1b'

# SERVERS / SERVERS
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 default-router '172.16.11.254'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 domain-name "${SECRET_DOMAIN0}"
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 name-server '172.16.16.5'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 range 0 start '172.16.11.200'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 range 0 stop '172.16.11.253'

set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters 'allow bootp;'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters 'allow booting;'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters 'next-server 172.16.10.254;'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters 'if exists user-class and option user-class = &quot;iPXE&quot; {'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters 'filename &quot;http://172.16.16.4/boot.ipxe&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters '} else {'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters 'filename &quot;ipxe.efi&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 subnet-parameters '}'

set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-m0 ip-address '172.16.11.10'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-m0 mac-address '6c:4b:90:27:2d:5b'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-m1 ip-address '172.16.11.11'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-m1 mac-address '6c:4b:90:27:2e:a5'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-m2 ip-address '172.16.11.12'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-m2 mac-address '6c:4b:90:27:2e:11'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-w0 ip-address '172.16.11.13'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-w0 mac-address 'e4:1d:79:67:75:95'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-w1 ip-address '172.16.11.14'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-w1 mac-address 'e4:1d:85:75:d8:73'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-w2 ip-address '172.16.11.15'
set service dhcp-server shared-network-name SERVERS subnet 172.16.11.0/24 static-mapping prod-w2 mac-address '7c:fe:90:a2:c5:90'

# IOT
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 default-router '172.16.13.254'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 domain-name "${SECRET_DOMAIN0}"
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 name-server '172.16.16.5'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 range 0 start '172.16.13.200'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 range 0 stop '172.16.13.253'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping booster-pump ip-address '172.16.13.110'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping booster-pump mac-address '10:d5:61:30:ff:37'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping water-pump ip-address '172.16.13.109'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping water-pump mac-address '10:d5:61:31:71:e8'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em00 ip-address '172.16.13.100'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em00 mac-address '34:94:54:74:7a:52'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em01 ip-address '172.16.13.101'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em01 mac-address '80:7d:3a:32:bc:3d'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em02 ip-address '172.16.13.102'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em02 mac-address 'f4:cf:a2:f6:00:50'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em03 ip-address '172.16.13.103'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em03 mac-address '84:cc:a8:9c:18:ae'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em04 ip-address '172.16.13.104'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em04 mac-address '84:cc:a8:9b:f1:88'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em05 ip-address '172.16.13.105'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping em05 mac-address '98:f4:ab:e2:db:ec'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping farezz-plug ip-address '172.16.13.112'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping farezz-plug mac-address '10:d5:61:d2:61:b9'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping guestroom-led ip-address '172.16.13.114'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping guestroom-led mac-address '40:f5:20:1f:5f:06'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ir01 ip-address '172.16.13.118'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ir01 mac-address '78:0f:77:ec:2c:45'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ir02 ip-address '172.16.13.119'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ir02 mac-address '78:0f:77:ec:0f:83'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping tcl-tv ip-address '172.16.13.115'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping tcl-tv mac-address 'c0:79:82:8e:a3:10'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping bedroom-plug ip-address '172.16.13.111'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping bedroom-plug mac-address '10:d5:61:ca:92:9a'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping rack-fan ip-address '172.16.13.113'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping rack-fan mac-address '10:d5:61:2f:5b:0d'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ups1-plug ip-address '172.16.13.106'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ups1-plug mac-address '10:d5:61:d0:72:ed'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ups2-plug ip-address '172.16.13.107'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ups2-plug mac-address '24:a1:60:1c:d8:7b'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ups3-plug ip-address '172.16.13.108'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping ups3-plug mac-address '10:d5:61:d1:94:ea'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping lg-tv ip-address '172.16.13.116'
set service dhcp-server shared-network-name IOT subnet 172.16.13.0/24 static-mapping lg-tv mac-address 'a0:6f:aa:ba:04:60'

# MANAGEMENT
set service dhcp-server shared-network-name MGMT authoritative
set service dhcp-server shared-network-name MGMT ping-check
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 default-router '172.16.10.254'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 domain-name "${SECRET_DOMAIN0}"
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 lease '86400'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 name-server '172.16.16.5'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 range 0 start '172.16.10.200'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 range 0 stop '172.16.10.253'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping core ip-address '172.16.10.1'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping core mac-address '1c:61:b4:95:30:e1'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping iap01 ip-address '172.16.10.8'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping iap01 mac-address '34:60:f9:93:67:c0'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping poe ip-address '172.16.10.2'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping poe mac-address '30:de:4b:30:fc:30'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping tor01 ip-address '172.16.10.3'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping tor01 mac-address '28:87:ba:b1:3e:0d'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping tor02 ip-address '172.16.10.4'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping tor02 mac-address '28:87:ba:b1:3e:0b'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping dev-k0 ip-address '172.16.10.16'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping dev-k0 mac-address '6c:4b:90:27:2d:5b'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping dev-k1 ip-address '172.16.10.17'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping dev-k1 mac-address '6c:4b:90:27:2e:a5'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping dev-k2 ip-address '172.16.10.18'
set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 static-mapping dev-k2 mac-address '6c:4b:90:27:2e:11'
#set service dhcp-server shared-network-name MGMT subnet 172.16.10.0/24 subnet-parameters 'option omada-address 172.16.16.6;'