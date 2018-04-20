All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [unreleased]

### Added

* Info about `inherit_mode` to allow exclusions from included configs.
* New `bin/release` script to make sure tests are ran before release.
* Add git commit with checksums as part of release task.

### Changed

* Increase max line length to 120 characters from 100.

## [0.0.1.beta2] - 2018-03-24

### Fixed

* Checksum creation code after running `rake release`.
* Add rubocop_method_order as runtime dependency.
* Clean up changelog version numbers used to match what was released.

## [0.0.1.beta1] - 2018-03-24

### Added

* Initial version of the gem.

[unreleased]: https://github.com/CoffeeAndCode/rubocop_coffeeandcode/compare/v0.0.1.beta2...HEAD
[0.0.1.beta2]: https://github.com/CoffeeAndCode/rubocop_method_order/compare/v0.0.1.beta1...v0.0.1.beta2
[0.0.1.beta1]: https://github.com/CoffeeAndCode/rubocop_coffeeandcode/releases/tag/v0.0.1.beta1
