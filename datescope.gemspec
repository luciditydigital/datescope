# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'datescope/version'

Gem::Specification.new do |gem|
  gem.name          = "datescope"
  gem.version       = Datescope::VERSION
  gem.authors       = ["Laszlo Papp"]
  gem.email         = ["nucc@lucidity.ie"]
  gem.description   = %q{Extends the ActiveRecord models with date scopes}
  gem.summary       = %q{Date scopes for ActiveRecord}
  gem.homepage      = "http://lucidity.ie"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "activesupport"
end
