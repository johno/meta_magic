# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meta_magic/version'

Gem::Specification.new do |spec|
  spec.name          = "meta_magic"
  spec.version       = MetaMagic::VERSION
  spec.authors       = ['John Otander']
  spec.email         = ["johnotander@gmail.com"]
  spec.summary       = %q{Meta Magic concerns for abstract, object-agnostic views, controllers, and models.}
  spec.description   = %q{Want to get a path to an AR object, but don't know what the object is? Want to set a controller's instance variable, but don't know what controller you're in. Meta Magic can help.}
  spec.homepage      = "https://github.com/johnotander/meta_magic"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'actionpack'
end
