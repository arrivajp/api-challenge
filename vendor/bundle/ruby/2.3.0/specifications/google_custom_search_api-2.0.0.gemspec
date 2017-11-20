# -*- encoding: utf-8 -*-
# stub: google_custom_search_api 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "google_custom_search_api".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ben Wiseley".freeze]
  s.date = "2016-01-09"
  s.description = "Ruby lib for Google's Custom Search Api.".freeze
  s.email = ["wiseleyb@gmail.com".freeze]
  s.homepage = "http://github.com/wiseleyb/google_custom_search_api".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Ruby lib for Google's Custom Search Api.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_development_dependency(%q<json>.freeze, [">= 0"])
    else
      s.add_dependency(%q<httparty>.freeze, [">= 0"])
      s.add_dependency(%q<addressable>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<vcr>.freeze, [">= 0"])
      s.add_dependency(%q<webmock>.freeze, [">= 0"])
      s.add_dependency(%q<json>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>.freeze, [">= 0"])
    s.add_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_dependency(%q<json>.freeze, [">= 0"])
  end
end
