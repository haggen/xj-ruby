# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xj/version'

Gem::Specification.new do |spec|
  spec.name          = "xj"
  spec.version       = XJ::VERSION
  spec.authors       = ["Arthur"]
  spec.email         = ["arthur@corenzan.com"]
  spec.description   = %q{XJ is a web service that reads spreadsheets and outputs its data in JSON.}
  spec.summary       = %q{Read XLS into JSON.}
  spec.homepage      = "https://github.com/haggen/xj-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "multipart-post"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
