---
title: 'Introduction'
description: 'Docs intro'
---

**Welcome to homebrew-qtifw!**

The QT Installer Framework V4.5.2 for Homebrew.
***Update from 4.5.1 to 4.5.2***

**_Installation Instructions_**

-   Open the terminal

To add the formula enter the following command:

```bash
    brew tap jmuelbert/qtifw
    brew install qtifw [options]
```

By default (without any additional options) this formula install the
Qt Installer Framework. Please see the list of available options to
disable any bit of default behavior or add even more stuff.

**_Options_**

To get list of all available options, call

```bash
    brew info qtifw
```

Here is the relevant part from output that command for your convenience.

Note that by default **qtifw** builds all command line tools are installed.

Note that **--HEAD** builds are not really supported. They may fail to install,
they may crash at run time. Or even worse, the may work as expected. So use this
option at your own risk. And feel free to open up issues.

**_Documentation_**

`brew help`, `man brew` or check [Homebrew's documentation][homebrew_documentation].

The documentation for the Qt Installer Framework is located on [https://doc.qt.io/qtinstallerframework][qtinstallerframework_manual]

**_Contributing_**

Please see the [contributing guide][contribution_guide]

**_Known Issues_**

Please checkout [Issues][github_issues] page for a list of all known issues.

**_License_**

Code is under the [European Public License V1.2][license].

[license]: https://github.com/jmuelbert/homebrew-qtifw/blob/main/LICENSE
[contribution_guide]: https://github.com/jmuelbert/homebrew-qtifw/blob/main/CONTRIBUTING.md
[github_issues]: https://github.com/jmuelbert/homebrew-qtifw/issues
[qtinstallerframework_manual]: https://doc.qt.io/qtinstallerframework
[homebrew_documentation]: https://github.com/Homebrew/brew/blob/master/README.md
