#!/bin/bash

# Config

## Service that provides your global IP address
IP_ADDRESS_SERVICE_URL=$1 # http://ipinfo.io/ip

## The endpoint where the IP address will be sent
ENDPOINT_URL=$2

# The callback for transforming response data from the "IP_ADDRESS_SERVICE_URL"
# Must echo a valid ipv4 address
function callback() {
    echo $1
}

ip_address=$(callback "$(curl -s $IP_ADDRESS_SERVICE_URL)")

curl -s \
    -H "Accept: application/json" \
    -H "Content-Type:application/json" \
    -X POST \
    --data "{'ip_address': '${ip_address}'}" "${ENDPOINT_URL}" > /dev/null 2>&1