$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_menu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_menu"
  s.version     = SimpleMenu::VERSION
  s.authors     = ["Marcelo Jacobus"]
  s.email       = ["marcelo.jacobus@gmail.com"]
  s.homepage    = "http://github.com/mjacobus/simple_menu"
  s.summary     = "Menu Helper"
  s.description = "Menu Helper"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
end
