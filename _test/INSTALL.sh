main () {
    # Test global variables
    echo "pkg_src: ${pkg_src}"
    echo "pkg_dir: ${pkg_dir}"
    echo "pkg_ver: ${pkg_ver}"
    echo "pkg_desc: ${pkg_desc}"
    echo "pkg_name: ${pkg_name}"

    echo "pwd: ${PWD}"

    # Extract file
    mkdir -p "${pkg_src}/hugo"
    tar xzf "${pkg_src}/hugo_${pkg_ver}_Linux-64bit.tar.gz" -C "${pkg_src}/hugo" --strip-components=1

    # Install file
    install -D -m 644 "${pkg_src}/PhpStorm_400x400_Twitter_logo_white.png" "${pkg_dir}/test.png"

    # Install extracted file
    rsync -rtl "${pkg_src}/hugo/" "${pkg_dir}" --exclude=README.md
    chmod 755 "${pkg_dir}/hugo/hugo_${pkg_ver}_linux_amd64"
}

main
