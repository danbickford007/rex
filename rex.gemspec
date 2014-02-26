# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rex/version'

Gem::Specification.new do |spec|
  spec.name          = "rexsole"
  spec.version       = Rex::VERSION
  spec.authors       = ["Dan Bickford"]
  spec.email         = ["danbickford007@yahoo.com"]
  spec.description   = %q{rexsole is an interactive regex console.}
  spec.summary       = %q{Test an unlimited number of strings against your regex.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "colorize"
end
