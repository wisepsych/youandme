# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "youandme"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Preston Lee"]
  s.date = "2011-11-05"
  s.description = "An unofficial ruby library for quickly parsing 23andme raw data files into a plain Ruby structures for quick processing and analysis."
  s.email = "conmotto@gmail.com"
  s.executables = ["youandme"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/youandme",
    "lib/.DS_Store",
    "lib/youandme.rb",
    "lib/youandme/data_processor.rb",
    "lib/youandme/raw_data_file_loader.rb",
    "lib/youandme/report.css",
    "lib/youandme/report.md.erb",
    "lib/youandme/xhtml-toc.xslt",
    "test/helper.rb",
    "test/test_youandme.rb",
    "youandme.gemspec"
  ]
  s.homepage = "http://github.com/preston/youandme"
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Data comparison and analysis tools for 23andme raw data files."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<getopt>, ["~> 1.4.1"])
      s.add_runtime_dependency(%q<rpeg-multimarkdown>, ["~> 0.1.1"])
      s.add_runtime_dependency(%q<libxslt-ruby>, ["~> 1.0.8"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<getopt>, ["~> 1.4.1"])
      s.add_dependency(%q<rpeg-multimarkdown>, ["~> 0.1.1"])
      s.add_dependency(%q<libxslt-ruby>, ["~> 1.0.8"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<getopt>, ["~> 1.4.1"])
    s.add_dependency(%q<rpeg-multimarkdown>, ["~> 0.1.1"])
    s.add_dependency(%q<libxslt-ruby>, ["~> 1.0.8"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

