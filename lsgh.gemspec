# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lsgh/version'

Gem::Specification.new do |spec|
  spec.name          = 'lsgh'
  spec.version       = Lsgh::VERSION
  spec.authors       = ['Emad Elsaid']
  spec.email         = ['blazeeboy@gmail.com']

  spec.summary       = 'list github organisation projects and pull requests'
  spec.description   = 'list github organisation projects and pull requests'
  spec.homepage      = 'https://www.github.com/blazeeboy/lsgh'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'github_api', '~> 0.17'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
end
