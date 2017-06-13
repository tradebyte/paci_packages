main () {
    mkdir -p "${pkg_src}/vscode"
    tar xzf "${pkg_src}/code-stable-code_${pkg_ver}-*.tar.gz" -C "${pkg_src}/vscode" --strip-components=1
    rsync -rtl "${pkg_src}/vscode/" "${pkg_dir}"
}

main
