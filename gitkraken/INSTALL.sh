#!/usr/bin/env bash

main () {
    mkdir -p "${pkg_src}/gitkraken"
    tar xzf "${pkg_src}/v${pkg_ver}.tar.gz" -C "${pkg_src}/gitkraken" --strip-components=1
    rsync -rtl "${pkg_src}/gitkraken/" "${pkg_dir}"
    install -D -m 644 "${pkg_src}/gitkraken.png" "${pkg_dir}/gitkraken.png"
}

main
