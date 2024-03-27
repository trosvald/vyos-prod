#!/bin/vbash
# shellcheck disable=all

# Firewall Rule for MGMT zone
# From MGMT to CCTV
set firewall ipv4 name mgmt-cctv default-action 'accept'
set firewall ipv4 name mgmt-cctv default-log
set firewall ipv4 name mgmt-cctv description 'From mgmt to cctv'
set firewall ipv4 name mgmt-cctv rule 10 action 'accept'
set firewall ipv4 name mgmt-cctv rule 10 description 'Rule: accept_HTTP/S'
set firewall ipv4 name mgmt-cctv rule 10 destination port 'http,https'
set firewall ipv4 name mgmt-cctv rule 10 protocol 'tcp'
set firewall ipv4 name mgmt-cctv rule 999 action 'drop'
set firewall ipv4 name mgmt-cctv rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-cctv rule 999 log
set firewall ipv4 name mgmt-cctv rule 999 state 'invalid'

# From MGMT to CONTAINERS
set firewall ipv4 name mgmt-containers default-action 'accept'
set firewall ipv4 name mgmt-containers default-log
set firewall ipv4 name mgmt-containers description 'From mgmt to CONTAINERS'
set firewall ipv4 name mgmt-containers rule 999 action 'drop'
set firewall ipv4 name mgmt-containers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-containers rule 999 log
set firewall ipv4 name mgmt-containers rule 999 state 'invalid'

# From MGMT to HOME
set firewall ipv4 name mgmt-home default-action 'accept'
set firewall ipv4 name mgmt-home default-log
set firewall ipv4 name mgmt-home description 'From mgmt to home'
set firewall ipv4 name mgmt-home rule 999 action 'drop'
set firewall ipv4 name mgmt-home rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-home rule 999 log
set firewall ipv4 name mgmt-home rule 999 state 'invalid'

# From MGMT to IOT
set firewall ipv4 name mgmt-iot default-action 'accept'
set firewall ipv4 name mgmt-iot default-log
set firewall ipv4 name mgmt-iot description 'From mgmt to IOT'
set firewall ipv4 name mgmt-iot rule 999 action 'drop'
set firewall ipv4 name mgmt-iot rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-iot rule 999 log
set firewall ipv4 name mgmt-iot rule 999 state 'invalid'

# From MGMT to LOCAL
set firewall ipv4 name mgmt-local default-action 'accept'
set firewall ipv4 name mgmt-local default-log
set firewall ipv4 name mgmt-local description 'From mgmt to LOCAL'
set firewall ipv4 name mgmt-local rule 999 action 'drop'
set firewall ipv4 name mgmt-local rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-local rule 999 log
set firewall ipv4 name mgmt-local rule 999 state 'invalid'

# From MGMT to SERVERS
set firewall ipv4 name mgmt-servers default-action 'accept'
set firewall ipv4 name mgmt-servers default-log
set firewall ipv4 name mgmt-servers description 'From mgmt to SERVERS'
set firewall ipv4 name mgmt-servers rule 10 action 'accept'
set firewall ipv4 name mgmt-servers rule 10 description 'Rule: accept_minio'
set firewall ipv4 name mgmt-servers rule 10 destination port '9000,9001'
set firewall ipv4 name mgmt-servers rule 10 protocol 'tcp'
set firewall ipv4 name mgmt-servers rule 11 action 'accept'
set firewall ipv4 name mgmt-servers rule 11 description 'Rule: accept_ssh'
set firewall ipv4 name mgmt-servers rule 11 destination port 'ssh'
set firewall ipv4 name mgmt-servers rule 11 protocol 'tcp'
set firewall ipv4 name mgmt-servers rule 20 action 'accept'
set firewall ipv4 name mgmt-servers rule 20 description 'Rule: accept_talos'
set firewall ipv4 name mgmt-servers rule 20 destination group address-group 'k8s_nodes'
set firewall ipv4 name mgmt-servers rule 20 destination port '6443,50000'
set firewall ipv4 name mgmt-servers rule 20 protocol 'tcp'
set firewall ipv4 name mgmt-servers rule 999 action 'drop'
set firewall ipv4 name mgmt-servers rule 999 description 'Rule: drop_invalid'
set firewall ipv4 name mgmt-servers rule 999 log
set firewall ipv4 name mgmt-servers rule 999 state 'invalid'

# From MGMT to WAN
set firewall ipv4 name mgmt-wan default-action 'accept'
set firewall ipv4 name mgmt-wan description 'From mgmt to WAN'