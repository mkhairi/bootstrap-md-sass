# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap-md-sass/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap-md-sass"
  spec.version       = Bootstrap::Md::Sass::VERSION
  spec.authors       = ["mkhairi"]
  spec.email         = ["khairi@labs.my"]
  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/mkhairi/bootstrap-md-sass"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
