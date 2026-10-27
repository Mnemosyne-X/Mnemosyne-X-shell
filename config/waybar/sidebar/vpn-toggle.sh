#!/bin/bash

# Prevent multiple instances
exec 9>/tmp/protonvpn-toggle.lock
flock -n 9 || exit 0

WGCONF="/etc/wireguard/wg0.conf"
RANDOM_CONF="$HOME/.config/protonvpn/random-server.sh"

# If VPN is running, disconnect
if ip link show wg0 >/dev/null 2>&1; then
    sudo wg-quick down wg0
    exit 0
fi

# Pick a random config
CONF="$($RANDOM_CONF)"

if [ -z "$CONF" ] || [ ! -f "$CONF" ]; then
    notify-send "ProtonVPN" "No server configuration found."
    exit 1
fi

# Remove the DNS line (NetworkManager handles DNS)
TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

grep -v '^DNS =' "$CONF" > "$TMP"

sudo install -m 600 "$TMP" "$WGCONF"
sudo wg-quick up wg0
