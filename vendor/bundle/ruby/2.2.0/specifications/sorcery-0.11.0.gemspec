# -*- encoding: utf-8 -*-
# stub: sorcery 0.11.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sorcery"
  s.version = "0.11.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Noam Ben Ari", "Kir Shatrov", "Grzegorz Witek", "Chase Gilliam"]
  s.date = "2017-05-16"
  s.description = "Provides common authentication needs such as signing in/out, activating by email and resetting password."
  s.email = "chase.gilliam@gmail.com"
  s.homepage = "https://github.com/Sorcery/sorcery"
  s.licenses = ["MIT"]
  s.post_install_message = "As of version 1.0 oauth/oauth2 won't be automatically bundled so you may need to add those dependencies to your Gemfile.\nYou may need oauth2 if you use external providers such as any of these: https://github.com/Sorcery/sorcery/tree/master/lib/sorcery/providers"
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.4.5.1"
  s.summary = "Magical authentication for Rails applications"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth>, [">= 0.4.4", "~> 0.4"])
      s.add_runtime_dependency(%q<oauth2>, [">= 0.8.0", "~> 1.0"])
      s.add_runtime_dependency(%q<bcrypt>, ["~> 3.1"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0.3.8"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.5.0"])
      s.add_development_dependency(%q<test-unit>, ["~> 3.1.0"])
      s.add_development_dependency(%q<byebug>, ["~> 9.0.0"])
    else
      s.add_dependency(%q<oauth>, [">= 0.4.4", "~> 0.4"])
      s.add_dependency(%q<oauth2>, [">= 0.8.0", "~> 1.0"])
      s.add_dependency(%q<bcrypt>, ["~> 3.1"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0.3.8"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.5.0"])
      s.add_dependency(%q<test-unit>, ["~> 3.1.0"])
      s.add_dependency(%q<byebug>, ["~> 9.0.0"])
    end
  else
    s.add_dependency(%q<oauth>, [">= 0.4.4", "~> 0.4"])
    s.add_dependency(%q<oauth2>, [">= 0.8.0", "~> 1.0"])
    s.add_dependency(%q<bcrypt>, ["~> 3.1"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0.3.8"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.5.0"])
    s.add_dependency(%q<test-unit>, ["~> 3.1.0"])
    s.add_dependency(%q<byebug>, ["~> 9.0.0"])
  end
end
