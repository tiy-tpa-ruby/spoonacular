$:.push File.expand_path('../lib', __FILE__)
require 'spoonacular/version'

Gem::Specification.new do |s|
  s.name = 'Spoonacular'
  s.version = Spoonacular::VERSION
  s.date = '2016-03-16'
  s.summary = "Spoonacular-gem"
  s.description = "gem for the Spoonacular API"
  s.authors = ["Daniel Woznicki"]
  s.email = 'daniel.woznicki@gmail.com'
  s.files = Dir["lib/**/*"]
  s.homepage = 'http://rubygems.org/gems/spoonacular'
  s.license = 'MIT'

  s.add_runtime_dependency 'httpclient'
end
