All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [unreleased]

## [0.0.4] - 2020-01-06

### Changed

- Update rubocop
- Change Metrics/LineLength to Layout/LineLength
- Use Lint/SuppressedException instead of Lint/HandleExceptions
- Update default ruby version
- Reformat Markdown list chars to match default prettier formatting

## [0.0.3] - 2019-02-03

### Changed

- Do not treat comments in bundler files as group separators

## [0.0.2] - 2018-04-25

### Changed

- Bump rubocop_method_order dependency from 0.2.1 to 0.3.0

## [0.0.1] - 2018-04-20

### Added

- Info about `inherit_mode` to allow exclusions from included configs.
- New `bin/release` script to make sure tests are ran before release.
- Add git commit with checksums as part of release task.

### Changed

- Increase max line length to 120 characters from 100.

## [0.0.1.beta2] - 2018-03-24

### Fixed

- Checksum creation code after running `rake release`.
- Add rubocop_method_order as runtime dependency.
- Clean up changelog version numbers used to match what was released.

## [0.0.1.beta1] - 2018-03-24

### Added

- Initial version of the gem.

[unreleased]: https://github.com/CoffeeAndCode/rubocop_coffeeandcode/compare/v0.0.4...HEAD
[0.0.4]: https://github.com/CoffeeAndCode/rubocop_method_order/compare/v0.0.3...v0.0.4
[0.0.3]: https://github.com/CoffeeAndCode/rubocop_method_order/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/CoffeeAndCode/rubocop_method_order/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/CoffeeAndCode/rubocop_method_order/compare/v0.0.1.beta1...v0.0.1
[0.0.1.beta2]: https://github.com/CoffeeAndCode/rubocop_method_order/compare/v0.0.1.beta1...v0.0.1.beta2
[0.0.1.beta1]: https://github.com/CoffeeAndCode/rubocop_coffeeandcode/releases/tag/v0.0.1.beta1
