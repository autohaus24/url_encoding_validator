$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "url-encoding-validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "url-encoding-validator"
  s.version     = UrlEncodingValidator::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of UrlEncodingValidator."
  s.description = "TODO: Description of UrlEncodingValidator."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
end
