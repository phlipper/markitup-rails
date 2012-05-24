require './lib/markitup-rails/version'

Gem::Specification.new do |s|
  s.name        = 'markitup-rails'
  s.version     = Markitup::Rails::VERSION
  s.date        = '2012-05-23'
  s.summary     = "MarkItUp for rails."
  s.description = "Sets up the asset pipeline."
  s.authors     = ["Uri Gorelik"]
  s.email       = 'uri@ndstorefront.com'
  s.files       = ["lib/markitup-rails.rb"]
  s.homepage    =
    'https://github.com/HealthyWeb/markitup-rails'

  s.files        = `git ls-files`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.add_dependency "railties", "~> 3.0"
  s.add_development_dependency "bundler", "~> 1.0.0"
  s.add_development_dependency "rails",   "~> 3.0"
end