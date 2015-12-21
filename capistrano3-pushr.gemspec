lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/pushr/version'

Gem::Specification.new do |gem|
  gem.name          = 'capistrano3-pushr'
  gem.version       = Capistrano::Pushr::VERSION
  gem.authors       = ['Zsofia Balogh']
  gem.email         = ['zsofia.balogh@supercharge.io']
  gem.description   = 'Pushr specific Capistrano tasks'
  gem.summary       = 'Pushr specific Capistrano tasks'
  gem.homepage      = 'https://github.com/team-supercharge/capistrano3-pushr'
  gem.license       = 'GPL-3.0'

  gem.files        = Dir.glob('{lib,script}/**/*.{rb,rake,sh}')
  gem.test_files   = Dir.glob('test/**/*.{rb,sh}')

  gem.add_dependency 'capistrano', '~> 3.1', '>= 3.1.0'
  gem.add_dependency 'pushr-core', '>= 1.0.2'

  gem.add_development_dependency 'rake'
end
