# paci_packages
The public [`paci`](https://github.com/tradebyte/paci) package registry.

## How to package something

Each package folder consists of the following:

* `RECIPE.yml` is the only file you absolutly need. It is a meta file and descripes your package.
* `INSTALL.sh` (optional) this script will be invoked when installing a package. It is a normal BASH script.
  * You can use the [script variables](#script-variables).
* `UPDATE.sh` (optional) this script will be invoked when updating a package. It is a normal BASH script.
  * If no such script is found when updating, the old package version will be removed and the install script will be invoked.
* `GET.json` (optional) here you can specify what should be downloaded to build the package.
  * You can use [template variables](#template-variables). They will be replaced accordingly.
* `README.md` (optional) here you can tell contributors how to contribute to your package or submit bugs.
* `DESKTOP` (optional) this is a template file for desktop entries.
  * You can use [template variables](#template-variables). They will be replaced accordingly.
* `CONF.tar.gz` (optional) here you can put config files. Your should use the folder structure of your `$HOME` directory. It will extract the files and folders inside exactly in the corresponding directories.
* `SOURCES.tar.gz` (optional) here you can store additional files you need to build the package.

### Template variables

* `pkg_src` - the working directory of the package. (a temp folder)
* `pkg_dir` - the packages own directory
* `pkg_ver` - the version of the package as specified in `RECIPE.yml`
* `pkg_desc` - the description of the package as specified in `RECIPE.yml` (summary)
* `pkg_name` - the name of the package as specified in `RECIPE.yml`

### Script variables

```bash
${pkg_src}     # the working directory of the package. (a temp folder)
${pkg_dir}     # the packages own directory
${pkg_ver}     # the version of the package as specified in `RECIPE.yml`
${pkg_desc}    # the description of the package as specified in `RECIPE.yml` (summary)
${pkg_name}    # the name of the package as specified in `RECIPE.yml`
${PWD}         # the working directory is the same as ${pkg_src}
```

## Todo
- [ ] make a gzipped index file (JSON)
- [ ] add bash script to generate index file

## Contributing

See the [CONTRIBUTING] document.<br/>
Thank you, [contributors]!

  [CONTRIBUTING]: CONTRIBUTING.md
  [contributors]: https://github.com/tradebyte/paci_packages/graphs/contributors

## License

Copyright (c) 2017 by the Tradebyte Software GmbH.<br/>
`paci_packages` is part of [`paci`](https://github.com/tradebyte/paci) if not otherwise stated it may be redistributed under the terms specified in the [LICENSE] file.

  [LICENSE]: /LICENSE

## About

`paci_packages` is maintained and funded by the Tradebyte Software GmbH. <br/>
The names and logos for [`paci`](https://github.com/tradebyte/paci) and `paci_packages` are trademarks of the Tradebyte Software GmbH.
