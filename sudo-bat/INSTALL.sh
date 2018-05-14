#!/usr/bin/env bash

main() {
    # Install the package on Debian/Ubuntu
    sudo dpkg -i "${pkg_src}/bat-musl_${pkg_ver}_amd64.deb"
}

main
