#!/bin/sh

local_ip=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

echo "Running: registrator -ip $local_ip $*"

exec registrator -ip "$local_ip" "$@"
