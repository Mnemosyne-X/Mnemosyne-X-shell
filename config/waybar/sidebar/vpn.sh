#!/bin/bash

if ip link show wg0 >/dev/null 2>&1; then
    echo "📡"
else
    echo "⚠️"
fi
