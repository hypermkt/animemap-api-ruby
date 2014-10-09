# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'animemap/version'

Gem::Specification.new do |spec|
  spec.name          = "animemap-api-ruby"
  spec.version       = Animemap::VERSION
  spec.authors       = ["Makoto Chiba"]
  spec.email         = ["hypermkt@gmail.com"]
  spec.summary       = %q{A PHP client for ANIMEMAP API}
  spec.description   = %q{A PHP client for ANIMEMAP API}
  spec.homepage      = "https://github.com/hypermkt"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "faraday"
end
