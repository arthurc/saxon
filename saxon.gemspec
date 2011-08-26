# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "saxon/version"

Gem::Specification.new do |s|
  s.name        = "saxon"
  s.version     = Saxon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Arthur Carlsson"]
  s.email       = ["arthur@example.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "saxon"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency('rspec')
  s.add_development_dependency('rspec-mocks')
  s.add_development_dependency('guard')
  s.add_development_dependency('guard-rspec')
  s.add_development_dependency('aasm')
end
