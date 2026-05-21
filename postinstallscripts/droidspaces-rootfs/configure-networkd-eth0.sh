#!/bin/bash
set -euo pipefail

mkdir -p /etc/systemd/network

cat > /etc/systemd/network/20-eth0.network <<'EOF'
[Match]
Name=eth*
[Network]
DHCP=yes
IPv6AcceptRA=yes
[DHCPv4]
UseDNS=yes
UseDomains=yes
RouteMetric=100
EOF

chmod 0644 /etc/systemd/network/20-eth0.network

echo "Installed Droidspaces NAT networkd profile:"
echo "  /etc/systemd/network/20-eth0.network"
