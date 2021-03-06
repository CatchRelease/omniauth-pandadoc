# frozen_string_literal: true

require File.expand_path(
  File.join('..', 'lib', 'omniauth', 'pandadoc', 'version'),
  __FILE__
)

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-pandadoc'
  gem.version       = OmniAuth::Pandadoc::VERSION
  gem.license       = 'MIT'
  gem.summary       = %(Pandadoc Strategy for OmniAuth)
  gem.authors       = ['Mike Carey', 'Euan Lau', 'Damian Galarza']
  gem.email         = ['euanlau@gmail.com']
  gem.homepage      = 'https://github.com/catchrelease/omniauth-pandadoc'

  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 2.2'

  gem.add_runtime_dependency 'jwt', '~> 2'
  gem.add_runtime_dependency 'omniauth', '~> 1.2'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.3'

  gem.add_development_dependency 'rake', '~> 12.0'
  gem.add_development_dependency 'rspec', '~> 3'
  gem.add_development_dependency 'rubocop', '~> 0.58'
end
