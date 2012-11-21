# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "flattr/version"

Gem::Specification.new do |s|
  s.name        = "flattr"
  s.version     = Flattr::Version.to_s
  s.authors     = ["Simon Gate", "Joel Hansson"]
  s.email       = ["simon@smgt.me", "joel.hansson@gmail.com"]
  s.homepage    = "http://github.com/simon/flattr"
  s.summary     = %q{Flattr API wrapper}

  s.rubyforge_project = "flattr"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'faraday', '~> 0.7'
  s.add_dependency 'multi_json', '~> 1.3.2'

  s.add_development_dependency 'json'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rdiscount'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
