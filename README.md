# homebrew-qtifw

[![Gitpod-Ready-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/jmuelbert/homebrew-qtifw)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/a02f8b8cb77d4d7088c8c3be5bc4f9ae)](https://app.codacy.com/manual/jmuelbert/homebrew-qtifw?utm_source=github.com&utm_medium=referral&utm_content=jmuelbert/homebrew-qtifw&utm_campaign=Badge_Grade_Dashboard)
[![GitHub license](https://img.shields.io/badge/license-EUPL-blue.svg)](https://joinup.ec.europa.eu/page/eupl-text-11-12)

The QT Installer Framework V4.0.1 for Homebrew

## Install

```bash
    brew tap jmuelbert/homebrew-qtifw
    brew install qtifw [options]
```

By default (without any additional options) this formula install the
Qt Installer Framework. Please see the list of available options to
disable any bit of default behaviour or add even more stuff.

## Options

To get list of all available options, call ~brew info qt-ifw~. Here is
the relevant part from output that command for your convenience.

==> Options

Note that by default =qt-ifw= builds all Commandline tools are installed.

Note that =--HEAD= builds are not really supported. They may fail to install,
they may crash at run time. Or even worse, the may work as expected. So use this
option at your own risk. And feel free to open up issues.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/brew/blob/master/README.md).

## Contributing

Please see the [contributing guide](https://github.com/jmuelbert/homebrew-qtifw/blob/master/CONTRIBUTING.md)

## Known Issues

Please checkout [Issues](https://github.com/jmuelbert/homebrew-qtifw/issues) page for a list of all known issues.

## Acknowledgements

Many thanks to everyone reporting issues.

## License

Code is under the [European Public License V1.2](https://github.com/jmuelbert/homebrew-qtifw/blob/master/LICENSE.EUPL-1_2.txt).
