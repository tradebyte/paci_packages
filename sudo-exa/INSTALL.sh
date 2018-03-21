main() {
    # Extract the zip
    unzip "${pkg_src}/exa-linux-x86_64-${pkg_ver}.zip" -d "${pkg_src}/exa"

    # Install file
    sudo install -m 655 "${pkg_src}/exa/exa-linux-x86_64" "/usr/local/bin/exa"
}

main
