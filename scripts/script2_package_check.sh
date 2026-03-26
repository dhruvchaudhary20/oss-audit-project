#!/bin/bash
# script2_package_check.sh
# checking if a package (default git) is installed

check_pkg=$1
if [ -z "$check_pkg" ]; then
    check_pkg="git"
fi

echo "Inspecting package: $check_pkg"

# quick check if command exists
if ! command -v $check_pkg &> /dev/null; then
    echo "$check_pkg not found on this system."
fi

case $check_pkg in
    git)
        echo "Git is the selected software for this audit."

        if command -v dpkg > /dev/null; then
            dpkg -s git 2>/dev/null | grep -E "^Version|^Description"
        elif command -v rpm > /dev/null; then
            rpm -qi git 2>/dev/null | grep -E "^Version|^Summary"
        else
            echo "Version info (fallback):"
            git --version
        fi

        echo "License: GPL-2.0"
        ;;
    apache|apache2)
        echo "Apache: widely used web server"
        echo "License: Apache License 2.0"
        ;;
    mysql)
        echo "MySQL: open-source database system"
        echo "License: GPL"
        ;;
    vlc)
        echo "VLC: media player that supports almost everything"
        echo "License: GPL"
        ;;
    *)
        echo "No detailed info for $check_pkg yet."
        ;;
esac