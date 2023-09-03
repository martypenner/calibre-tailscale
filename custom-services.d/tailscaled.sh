#!/usr/bin/with-contenv bash

set -euo pipefail

tailscaled --tun=userspace-networking --socks5-server=localhost:1055 --outbound-http-proxy-listen=localhost:1055
