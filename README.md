# homebrew-qtifw

The QT Installer Framework for Homebrew

** Install

#+BEGIN_SRC bash
$ brew tap jmuelbert/homebrew-qtifw
$ brew install qt-ifw [options]
#+END_SRC

By default (without any additional options) this formula install the
Qt Installer Framework. Please see the list of available options to
disable any bit of default behaiviour or add even more stuff.

** Options

To get list of all available options, call ~brew info qt-ifw~. Here is
the relevant part from output that command for your covenience.

#+BEGIN_SRC bash
==> Options
#+END_SRC

Note that by default =qt-ifw= builds all Commandline tools are installed.

Note that =--HEAD= builds are not really supported. They may fail to install,
they may crash at run time. Or even worse, the may work as expected. So use this
option at your own risk. And feel free to open up issues.
## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/brew/blob/master/docs/README.md).
## Contributing
Please see the [contributing guide](https://github.com/jmuelbert/homebrew-qtifw/blob/master/.github/CONTRIBUTING.md).

** Known Issues

Please checkout [[https://github.com/jmuelbert/homebrew-qtifw/issues][Issues]] page for a list of all known issues.

** Acknowledgements

Many thanks to everyone reporting issues.

## License
Code is under the [European Public License V1.2](https://github.com/jmuelbert/homebrew-qtifw/blob/master/LICENSE.EUPL_1.2).