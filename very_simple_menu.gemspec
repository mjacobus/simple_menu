$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_menu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "very_simple_menu"
  s.version     = SimpleMenu::VERSION
  s.authors     = ["Marcelo Jacobus"]
  s.email       = ["marcelo.jacobus@gmail.com"]
  s.homepage    = "http://github.com/mjacobus/very_simple_menu"
  s.summary     = "Menu Helper"
  s.description = "Menu Helper"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "coveralls"
end
