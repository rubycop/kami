# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kami/version'

Gem::Specification.new do |spec|
  spec.name          = "kami"
  spec.version       = Kami::VERSION
  spec.authors       = ["Joe Heth"]
  spec.email         = ["joeheth@gmail.com"]

  spec.summary       = %q{A lightweight ruby client for the Kami REST API.}
  spec.description   = %q{A lightweight ruby client for the Kami REST API.}
  spec.homepage      = "https://github.com/jheth/kami"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client", "> 2.0.0", "<= 2.1.0"

  spec.add_development_dependency "bundler", ">= 1.11", "< 2.0"
  spec.add_development_dependency "rake", ">= 10.0", "< 12.0"
  spec.add_development_dependency "rspec", ">= 3.0", "< 4.0"
  spec.add_development_dependency "simplecov", ">= 0.11", "< 1.0"
  spec.add_development_dependency "webmock", ">= 2.0.0", "< 3.0"
  spec.add_development_dependency "vcr", ">= 2.9.3", "< 4.0"
  spec.add_development_dependency "pry-byebug", ">= 3.3.0", "< 4.0"
  spec.add_development_dependency "awesome_print", ">= 1.6.1", "< 2.0"
end
