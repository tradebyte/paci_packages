main () {
    mkdir -p "${pkg_src}/phpstorm"
    tar xzf "${pkg_src}/PhpStorm-${pkg_ver}.tar.gz" -C "${pkg_src}/phpstorm" --strip-components=1
    rsync -rtl "${pkg_src}/phpstorm/" "${pkg_dir}"
}

main
