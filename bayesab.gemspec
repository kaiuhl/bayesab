# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bayesab/version'

Gem::Specification.new do |spec|
  spec.name          = "bayesab"
  spec.version       = Bayesab::VERSION
  spec.authors       = ["Alan Johnson"]
  spec.email         = ["alan@teamtreehouse.com"]
  spec.summary       = %q{Command line tool and library for analyzing Bayesian A/B tests.}
  spec.description   = %q{Command line tool and library for analyzing Bayesian A/B tests.}
  spec.homepage      = "https://github.com/commondream/bayesab"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'distribution', '~> 0.7.1'
end
