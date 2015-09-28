# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: emoji_replace 0.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "emoji_replace"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["kaspernj"]
  s.date = "2015-09-28"
  s.description = "A library to automatically handle Emoji's without crashing your MySQL database"
  s.email = "k@spernj.org"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "emoji_replace.gemspec",
    "lib/emoji_replace.rb",
    "lib/emoji_replace/replacer.rb",
    "lib/emoji_replace/seamless.rb",
    "shippable.yml",
    "spec/emoji_replace/replacer_spec.rb",
    "spec/emoji_replace/seamless_spec.rb",
    "spec/emoji_replace_spec.rb",
    "spec/factories/message.rb",
    "spec/models/message.rb",
    "spec/schema.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/kaspernj/emoji_replace"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "A library to automatically handle Emoji's without crashing your MySQL database"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<emoji>, [">= 1.0.5"])
      s.add_development_dependency(%q<rspec>, ["~> 3.3.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, [">= 4.0.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<jdbc-sqlite3>, [">= 0"])
      s.add_development_dependency(%q<activerecord-jdbc-adapter>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
    else
      s.add_dependency(%q<emoji>, [">= 1.0.5"])
      s.add_dependency(%q<rspec>, ["~> 3.3.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 4.0.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<jdbc-sqlite3>, [">= 0"])
      s.add_dependency(%q<activerecord-jdbc-adapter>, [">= 0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
    end
  else
    s.add_dependency(%q<emoji>, [">= 1.0.5"])
    s.add_dependency(%q<rspec>, ["~> 3.3.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 4.0.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<jdbc-sqlite3>, [">= 0"])
    s.add_dependency(%q<activerecord-jdbc-adapter>, [">= 0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
  end
end

