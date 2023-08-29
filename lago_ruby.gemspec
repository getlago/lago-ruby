# -*- encoding: utf-8 -*-

=begin
#Lago API documentation

#Lago API allows your application to push customer information and metrics (events) from your application to the billing application.

The version of the OpenAPI document: 0.45.0-beta
Contact: tech@getlago.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "lago_ruby/version"

Gem::Specification.new do |s|
  s.name        = "lago_ruby"
  s.version     = LagoAPI::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lago"]
  s.email       = ["tech@getlago.com"]
  s.homepage    = "https://github.com/getlago/lago-ruby"
  s.summary     = "Ruby wrapper for the Lago API"
  s.description = "Lago API allows your application to interact with the Lago API"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
