main () {
    # Test global variables
    echo "pkg_src: ${pkg_src}"
    echo "pkg_dir: ${pkg_dir}"
    echo "pkg_ver: ${pkg_ver}"
    echo "pkg_desc: ${pkg_desc}"
    echo "pkg_name: ${pkg_name}"

    # Install file
    install -D -m 644 "${pkg_src}/PhpStorm_400x400_Twitter_logo_white.png" "${pkg_dir}/test.png"
}

main
