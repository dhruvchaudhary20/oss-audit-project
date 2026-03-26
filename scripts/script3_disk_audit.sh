#!/bin/bash
# script3_disk_audit.sh

folders=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Starting disk and permission audit..."
echo ""

for d in "${folders[@]}"; do
    if [ -d "$d" ]; then
        echo "-> Directory: $d"

        size=$(du -sh $d 2>/dev/null | cut -f1)
        info=$(ls -ld $d | awk '{print "Perms: "$1, "- Owner: "$3}')

        echo "   Size: $size"
        echo "   $info"
    else
        echo "Directory $d not found"
    fi

    echo "------------------------"
done

echo ""
echo "Checking for Git config..."

if [ -f ~/.gitconfig ]; then
    echo "Found local git config at ~/.gitconfig"
elif [ -f /etc/gitconfig ]; then
    echo "Found global git config at /etc/gitconfig"
else
    echo "No git config found (maybe not configured yet)"
fi