# homebrew-qtifw

[![Gitpod-Ready-Code][gitpod_badge]][gitpod]
[![CI][ci_action_badge]][ci_action]
[![Dependabot auto-merge][dependabot_action_badge]][depandabot_action]
[![Dependency Review][dependency_review_action_badge]][dependency_review_action]
[![Deploy Astro site to Pages][ghpages_action_badge]][ghpages_action]
[![GitHub license][github_license_badge]][euplv1.2_license]

The QT Installer Framework V4.5.2 for Homebrew
**Update from 4.5.1 to 4.5.2**

## Install

```bash
    brew tap jmuelbert/qtifw
    brew install qtifw [options]
```

By default (without any additional options) this formula install the
Qt Installer Framework. Please see the list of available options to
disable any bit of default behavior or add even more stuff.

## Options

To get list of all available options, call

```bash
    brew info qtifw
```

Here is the relevant part from output that command for your convenience.

Note that by default **qtifw** builds all command line tools are installed.

Note that **--HEAD** builds are not really supported. They may fail to install,
they may crash at run time. Or even worse, the may work as expected. So use this
option at your own risk. And feel free to open up issues.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation][homebrew_documetation].

The documentation for the Qt Installer Framework is located on [https://doc.qt.io/qtinstallerframework][qtinstallerframework_manual]

## Contributing

Please see the [contributing guide][contribution_guide]

## Known Issues

Please checkout [Issues][github_issues] page for a list of all known issues.

## Analyzing Tools

[![Codacy Security Scan][codacy_action_badge]][codacy_action]
[![CodeQL][codeql_action_badge]][codeql_action]
[![Sonar Cloud Analysis][sonarcloud_action_badge]][sonarcloud_action]
[![DevSkim][devskim_action_badge]][devskim_action]

## Linter and spell checking

[![Write good][writegood_action_badge]][writegood_action]

## Open source compatibility check

[![REUSE Compliance Check][reuse_compliance_action_badge]][reuse_compliance_action]

## Acknowledgements

Many thanks to everyone reporting issues.

## License

Code is under the [European Public License V1.2][license].

[license]: https://github.com/jmuelbert/homebrew-qtifw/blob/master/LICENSE

[writegood_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/write-good.yml/badge.svg
[writegood_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/write-good.yml
[sonarcloud_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/sonarcloud-analysis.yml/badge.svg
[sonarcloud_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/sonarcloud-analysis.yml
[codacy_action_badge]: https://app.codacy.com/project/badge/Grade/5540e367f8564b249334da47b20a6953
[codacy_action]: https://app.codacy.com/gh/jmuelbert/homebrew-qtifw/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade
[codeql_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/codeql-analysis.yml/badge.svg
[codeql_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/codeql-analysis.yml
[devskim_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/devskim-analysis.yml/badge.svg
[devskim_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/devskim-analysis.yml
[reuse_compliance_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/reuse-check.yml/badge.svg
[reuse_compliance_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/reuse-check.yml
[gitpod_badge]: https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod
[gitpod]: https://gitpod.io/#https://github.com/jmuelbert/homebrew-qtifw
[ci_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/ci.yml/badge.svg
[ci_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/ci.yml
[dependabot_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/dependabot-merge.yml/badge.svg
[depandabot_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/dependabot-merge.yml
[dependency_review_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/dependency-review.yml/badge.svg
[dependency_review_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/dependency-review.yml
[github_license_badge]: https://img.shields.io/badge/license-EUPL-blue.svg
[euplv1.2_license]: https://joinup.ec.europa.eu/page/eupl-text-11-12
[homebrew_documetation]: https://github.com/Homebrew/brew/blob/master/README.md
[contribution_guide]: https://github.com/jmuelbert/homebrew-qtifw/blob/master/CONTRIBUTING.md
[github_issues]: https://github.com/jmuelbert/homebrew-qtifw/issues
[ghpages_action]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/pages-astro.yml
[ghpages_action_badge]: https://github.com/jmuelbert/homebrew-qtifw/actions/workflows/pages-astro.yml/badge.svg
[qtinstallerframework_manual]: https://doc.qt.io/qtinstallerframework
 
