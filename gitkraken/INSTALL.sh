main () {
    mkdir -p "${pkg_src}/gitkraken"
    tar xzf "${pkg_src}/gitkraken-amd64.tar.gz" -C "${pkg_src}/gitkraken" --strip-components=1
    rsync -rtl "${pkg_src}/gitkraken/" "${pkg_dir}"
}

main
