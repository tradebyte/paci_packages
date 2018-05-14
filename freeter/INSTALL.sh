#!/usr/bin/env bash

main () {
    install -D -m 755 "${pkg_src}/Freeter.AppImage" "${pkg_dir}/Freeter.AppImage"
    ${pkg_dir}/Freeter.AppImage
}

main
