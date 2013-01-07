$:.push File.expand_path("../lib", __FILE__)

require "markitup/rails/version"

Gem::Specification.new do |s|
  s.name        = 'markitup-rails'
  s.version     = Markitup::Rails::VERSION
  s.summary     = "MarkItUp for rails."
  s.description = "Sets up the asset pipeline."
  s.authors     = ["Uri Gorelik"]
  s.email       = 'uri@ndstorefront.com'
  s.files       = ["lib/markitup-rails.rb"]
  s.homepage    =
    'https://github.com/HealthyWeb/markitup-rails'

  s.add_dependency "rails", ">= 3.1"

  s.add_development_dependency "bundler", ">= 1.2.0"
  s.add_development_dependency "cane", "~> 2.5.0"
  s.add_development_dependency "minitest", "~> 4.3.0"
  s.add_development_dependency "minitest-rails", "~> 0.3.0"
  s.add_development_dependency "rake", ">= 10.0.0"
  s.add_development_dependency "simplecov", "~> 0.7.1"
end
