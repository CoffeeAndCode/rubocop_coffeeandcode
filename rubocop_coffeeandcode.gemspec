
# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop_coffeeandcode/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name = 'rubocop_coffeeandcode'
  spec.version = RuboCopCoffeeAndCode.gem_version
  spec.license = 'MIT'
  spec.author = 'Jonathan Knapp'
  spec.email = 'jon@coffeeandcode.com'

  spec.summary = 'Base rubocop configuration preferences for Coffee and Code.'
  spec.homepage = 'https://github.com/CoffeeAndCode/rubocop_coffeeandcode'
  spec.metadata = {
    'source_code_uri' => 'https://github.com/CoffeeAndCode/rubocop_coffeeandcode'
  }

  spec.files = `git ls-files -z`.split("\x0").reject do |file|
    file.match(/^(checksums|test)/)
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(/^exe/) { |file| File.basename(file) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.4.0'
  spec.cert_chain = ['certs/coffeeandcode.pem']

  if $PROGRAM_NAME.end_with?('gem')
    spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem')
  end

  spec.add_runtime_dependency 'rubocop', '~> 0.53'
  spec.add_runtime_dependency 'rubocop_method_order', '~> 0.2.1'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 12.3'
end
