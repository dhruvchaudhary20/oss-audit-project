#!/bin/bash
# script1_system_info.sh
# basic system identity info

echo "---- Linux System Identity Report ----"

KERN=$(uname -r)

# safer distro detection
if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d '=' -f 2 | tr -d '"')
else
    DISTRO="Not available (running on non-native Linux environment)"
fi

cur_user=$(whoami)
home_dir=$HOME

# uptime fallback
if command -v uptime > /dev/null; then
    uptime_info=$(uptime -p)
else
    uptime_info="Not available in this environment"
fi

curr_time=$(date)

echo "Kernel version: $KERN"
echo "Distro: $DISTRO"
echo "User: $cur_user"
echo "Home Directory: $home_dir"
echo ""

echo "System Uptime: $uptime_info"
echo "Current Date & Time: $curr_time"
echo ""

echo "Note: Linux is open-source and generally distributed under the GPL license."