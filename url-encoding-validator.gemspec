$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "url-encoding-validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "url-encoding-validator"
  s.version     = UrlEncodingValidator::VERSION
  s.authors     = ["Jakub Nieznalski"]
  s.email       = ["j.nieznalski@autohaus24.de"]
  s.homepage    = ""
  s.summary     = "Validate for malformed params on get"
  s.description = "Return 400 when params don't represent proper percent-encoding"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mocha"
end
