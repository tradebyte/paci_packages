main () {
    mkdir -p "${pkg_src}/vscode"
    tar xzf "${pkg_src}/stable" -C "${pkg_src}/vscode" --strip-components=1
    rsync -rtl "${pkg_src}/vscode/" "${pkg_dir}"
}

main
