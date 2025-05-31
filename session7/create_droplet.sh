#!/bin/bash 

curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DO_TOKEN" \
  -d '{"name":"abdul-testing", "region":"nyc3","size":"s-1vcpu-1gb","image":"centos-stream-9-x64","ssh_keys":["ed:ac:f6:2a:35:be:fe:c0:7a:89:37:60:41:e0:7b:4c"]}' \
  "https://api.digitalocean.com/v2/droplets"