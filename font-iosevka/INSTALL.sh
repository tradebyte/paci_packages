main () {
    mkdir -p "$HOME/.local/share/fonts"
    unzip "${pkg_src}/01-iosevka-${pkg_ver}.zip" -d "$HOME/.local/share/fonts"

    echo "Clearing font cache..."
    fc-cache -f
}

main
