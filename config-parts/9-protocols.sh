#!/bin/vbash

# BGP configuration
set protocols bgp neighbor 172.16.11.10 address-family ipv4-unicast
set protocols bgp neighbor 172.16.11.10 description 'prod-m0'
set protocols bgp neighbor 172.16.11.10 remote-as '64512'
set protocols bgp neighbor 172.16.11.11 address-family ipv4-unicast
set protocols bgp neighbor 172.16.11.11 description 'prod-m1'
set protocols bgp neighbor 172.16.11.11 remote-as '64512'
set protocols bgp neighbor 172.16.11.12 address-family ipv4-unicast
set protocols bgp neighbor 172.16.11.12 description 'prod-m2'
set protocols bgp neighbor 172.16.11.12 remote-as '64512'
set protocols bgp neighbor 172.16.11.13 address-family ipv4-unicast
set protocols bgp neighbor 172.16.11.13 description 'prod-w0'
set protocols bgp neighbor 172.16.11.13 remote-as '64512'
set protocols bgp neighbor 172.16.11.14 address-family ipv4-unicast
set protocols bgp neighbor 172.16.11.14 description 'prod-w1'
set protocols bgp neighbor 172.16.11.14 remote-as '64512'
set protocols bgp neighbor 172.16.11.15 address-family ipv4-unicast
set protocols bgp neighbor 172.16.11.15 description 'prod-w2'
set protocols bgp neighbor 172.16.11.15 remote-as '64512'
set protocols bgp parameters router-id '172.16.10.254'
set protocols bgp system-as '64513'