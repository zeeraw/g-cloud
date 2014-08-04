# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'g-cloud/version'

Gem::Specification.new do |spec|

  spec.name          = "g-cloud"
  spec.version       = GCloud::VERSION
  spec.authors       = ["Philip Vieira"]
  spec.email         = ["philip@vallin.se"]
  spec.summary       = %q{Useful tools for working with G-Cloud and the CloudStore}
  spec.description   = %q{Useful tools for working with G-Cloud and the CloudStore}
  spec.homepage      = "http://github.com/zeeraw/g-cloud"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake"

end
