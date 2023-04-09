---
title: "Introduction"
description: "Docs intro"
---

**Welcome to homebrew-qtifw!**

***Installation Instructions***

- Open the terminal

To add the formula enter the following command:

```bash
    brew tap jmuelbert/qtifw
    brew install qtifw [options]

```

By default (without any additional options) this formula install the
Qt Installer Framework. Please see the list of available options to
disable any bit of default behavior or add even more stuff.

***Options***

To get list of all available options, call

```bash
    brew info qtifw
```

Here is the relevant part from output that command for your convenience.

Note that by default **qtifw** builds all command line tools are installed.

Note that **--HEAD** builds are not really supported. They may fail to install,
they may crash at run time. Or even worse, the may work as expected. So use this
option at your own risk. And feel free to open up issues.

***Documentation***

`brew help`, `man brew` or check [Homebrew's documentation][homebrew_documetation].

The documentation for the Qt Installer Framework is located on [https://doc.qt.io/qtinstallerframework][qtinstallerframework_manual]

***Contributing***

Please see the [contributing guide][contribution_guide]

***Known Issues***

Please checkout [Issues][github_issues] page for a list of all known issues.

***License***

Code is under the [European Public License V1.2][license].

[license]: https://github.com/jmuelbert/homebrew-qtifw/blob/main/LICENSE

[contribution_guide]: https://github.com/jmuelbert/homebrew-qtifw/blob/main/CONTRIBUTING.md
[github_issues]: https://github.com/jmuelbert/homebrew-qtifw/issues
[qtinstallerframework_manual]: https://doc.qt.io/qtinstallerframework
[homebrew_documetation]: https://github.com/Homebrew/brew/blob/main/README.md
