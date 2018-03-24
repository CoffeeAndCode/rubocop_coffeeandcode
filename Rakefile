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

Rake::Task['release'].enhance do
  require 'digest/sha2'
  require_relative './lib/rubocop_coffeeandcode/version'

  built_gem_path = "pkg/rubocop_coffeeandcode-#{RuboCopMethodOrder.gem_version}.gem"

  checksum = Digest::SHA256.new.hexdigest(File.read(built_gem_path))
  checksum_path = "checksums/rubocop_coffeeandcode-#{RuboCopMethodOrder.gem_version}.gem.sha256"
  File.open(checksum_path, 'w') { |file| file.write(checksum) }

  checksum = Digest::SHA512.new.hexdigest(File.read(built_gem_path))
  checksum_path = "checksums/rubocop_coffeeandcode-#{RuboCopMethodOrder.gem_version}.gem.sha512"
  File.open(checksum_path, 'w') { |file| file.write(checksum) }
end

task default: [:test, :rubocop]
