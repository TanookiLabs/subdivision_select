$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subdivision_select/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "subdivision_select"
  s.version = SubdivisionSelect::VERSION
  s.authors = ["Sean Collins"]
  s.email = ["sean@cllns.com"]
  s.homepage = "https://github.com/cllns/subdivision_select"
  s.summary = "A Rails Engine to fill in a select box based on a country_select"
  s.license = "MIT"

  s.files = Dir[
    "{app,config,db,lib}/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.rdoc"
  ]

  s.add_dependency "rails", ">= 7.0"
  s.add_dependency "sprockets-rails", ">= 3.5"
  s.add_dependency "country_select", "~> 10.0.0"
  s.add_dependency "countries", "> 5.0", "< 8.0"
  s.add_dependency "jquery-rails", ">= 3.0"

  s.add_development_dependency "sqlite3", "~> 1.3" # Not used but we need an AR adapter

  s.add_development_dependency "puma", ">= 6.0"
  s.add_development_dependency "rspec-rails", "~> 7.0"
  s.add_development_dependency "rails-controller-testing"
  s.add_development_dependency "factory_bot_rails", "~> 6.0"
  s.add_development_dependency "database_cleaner"

  s.add_development_dependency "capybara", "~> 3.40"
  s.add_development_dependency "poltergeist", "~> 1.8"
end
