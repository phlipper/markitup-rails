$:.push File.expand_path("../lib", __FILE__)

require "markitup/rails/version"

Gem::Specification.new do |s|
  s.name        = "markitup-rails"
  s.version     = Markitup::Rails::VERSION
  s.summary     = "The markItUp! universal markup editor, bundled for Rails 3.1+ Asset Pipeline."
  s.description = "The markItUp! universal markup editor, bundled for Rails 3.1+ Asset Pipeline."
  s.authors     = ["Uri Gorelik", "Phil Cohen"]
  s.email       = ["uri@ndstorefront.com", "github@phlippers.net"]
  s.homepage    = "https://github.com/phlipper/markitup-rails"

  s.files	= `git ls-files`.split("\n")

  s.add_dependency "rails", ">= 3.1"

  s.add_development_dependency "bundler", ">= 1.2.0"
  s.add_development_dependency "cane", "~> 2.6.0"
  s.add_development_dependency "minitest", "~> 4.3.0"
  s.add_development_dependency "minitest-rails", "~> 0.3.0"
  s.add_development_dependency "rake", ">= 10.0.0"
  s.add_development_dependency "simplecov", ">= 0.8.0.pre"
end
