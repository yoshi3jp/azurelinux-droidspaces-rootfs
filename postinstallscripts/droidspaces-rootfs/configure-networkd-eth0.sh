#!/bin/bash
set -euo pipefail

mkdir -p /etc/systemd/network

cat > /etc/systemd/network/20-eth0.network <<'EOF'
[Match]
Name=eth0

[Network]
DHCP=yes
EOF

chmod 0644 /etc/systemd/network/20-eth0.network

echo "Installed Droidspaces NAT networkd profile:"
echo "  /etc/systemd/network/20-eth0.network"
