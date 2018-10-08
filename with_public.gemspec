# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'with_public/version'

Gem::Specification.new do |spec|
  spec.name = 'with_public'
  spec.version = WithPublic::VERSION
  spec.authors = ['OZAWA Sakuro']
  spec.email = ['sakuro@2238.club']

  spec.summary = 'Make methods public.'
  spec.description = <<~DESCRIPTION
    Adds Module#with_public to make private instance methods temporarily public.
  DESCRIPTION
  spec.homepage = 'https://github.com/sakuro/with_public'
  spec.license = 'MIT'

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/sakuro/with_public.git'
  spec.metadata['changelog_uri'] = 'https://github.com/sakuro/with_public/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) {|f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.59'
  spec.add_development_dependency 'rubocop-rspec'
end
