#!/usr/bin/env bash

main () {
    mkdir -p "${pkg_src}/toolbox"
    tar xzf "${pkg_src}/${pkg_name}-${pkg_ver}.tar.gz" -C "${pkg_src}/toolbox" --strip-components=1
    rsync -rtl "${pkg_src}/toolbox/" "${pkg_dir}"

    chmod +x "${pkg_dir}/${pkg_name}"

    echo "The application needs to be started once to be properly installed."
    echo "Starting the application..."
    ${pkg_dir}/${pkg_name}
}

main
