# frozen_string_literal: true

# Version information for the gem.
module RuboCopCoffeeAndCode
  # Returns the version of the currently loaded gem as a <tt>Gem::Version</tt>
  def self.gem_version
    Gem::Version.new VERSION::STRING
  end

  # Contains individual version parts for this gem.
  module VERSION
    MAJOR = 0
    MINOR = 0
    PATCH = 4
    PRE   = nil

    STRING = [MAJOR, MINOR, PATCH, PRE].compact.join('.')
  end
end
