# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rubocop/rake_task'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end
RuboCop::RakeTask.new

task default: [:test, :rubocop]

desc 'Generate checksum files for current gem version.'
task :checksum do |_task|
  require 'digest/sha2'
  require_relative './lib/rubocop_coffeeandcode/version'

  gem_filename = "rubocop_coffeeandcode-#{RuboCopCoffeeAndCode.gem_version}.gem"
  built_gem_path = "pkg/#{gem_filename}"

  checksum = Digest::SHA256.new.hexdigest(File.read(built_gem_path))
  checksum_path = "checksums/#{gem_filename}.sha256"
  File.open(checksum_path, 'w') { |file| file.write(checksum) }

  checksum = Digest::SHA512.new.hexdigest(File.read(built_gem_path))
  checksum_path = "checksums/#{gem_filename}.sha512"
  File.open(checksum_path, 'w') { |file| file.write(checksum) }

  `git add checksums/#{gem_filename}*`
  `git commit -m 'Add checksums for v#{RuboCopCoffeeAndCode.gem_version}'`
end
