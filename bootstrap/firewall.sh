#!/bin/vbash
# shellcheck disable=all

# General configuration
set firewall global-options state-policy established action 'accept'
set firewall global-options state-policy related action 'accept'
set firewall global-options all-ping enable
set firewall global-options broadcast-ping disable

# # Drop packages from outside
# set firewall name OUTSIDE-IN default-action 'drop'
# set firewall name OUTSIDE-LOCAL default-action 'drop'
# set firewall interface eth0 in name 'OUTSIDE-IN'
# set firewall interface eth0 local name 'OUTSIDE-LOCAL'
