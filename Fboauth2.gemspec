# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{Fboauth2}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hugo Rincon"]
  s.date = %q{2011-07-05}
  s.description = %q{}
  s.email = %q{hugo@bakedweb.net}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/facebookoauth_controller.rb",
    "config/fbconfig_test.yml",
    "config/routes.rb",
    "lib/Fboauth2.rb",
    "spec/fboauth2_spec.rb",
    "test/helper.rb",
    "test/test_Fboauth2.rb"
  ]
  s.homepage = %q{http://github.com/hugoerg56/Fboauth2}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{simple facebook auth}
  s.test_files = [
    "spec/fboauth2_spec.rb",
    "test/helper.rb",
    "test/test_Fboauth2.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fbgraph>, ["~> 1.6.0"])
      s.add_development_dependency(%q<rspec>, ["= 2.5.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<autotest>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["= 3.0.0"])
    else
      s.add_dependency(%q<fbgraph>, ["~> 1.6.0"])
      s.add_dependency(%q<rspec>, ["= 2.5.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<autotest>, [">= 0"])
      s.add_dependency(%q<rails>, ["= 3.0.0"])
    end
  else
    s.add_dependency(%q<fbgraph>, ["~> 1.6.0"])
    s.add_dependency(%q<rspec>, ["= 2.5.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<autotest>, [">= 0"])
    s.add_dependency(%q<rails>, ["= 3.0.0"])
  end
end
