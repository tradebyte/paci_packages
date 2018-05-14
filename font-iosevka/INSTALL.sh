#!/usr/bin/env bash

main () {
    mkdir -p "$HOME/.local/share/fonts"
    unzip "${pkg_src}/iosevka-ss08-${pkg_ver}.zip" -d "$HOME/.local/share/fonts"

    echo "Clearing font cache..."
    fc-cache -f
}

main
