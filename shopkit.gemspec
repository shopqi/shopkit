# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "shopkit"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["saberma"]
  s.date = "2012-07-18"
  s.description = "a gem for the ShopQi API"
  s.email = "mahb45@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.md",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.md",
    "README.md",
    "Rakefile",
    "lib/faraday_middleware/request/oauth2.rb",
    "lib/shopkit.rb",
    "lib/shopkit/client.rb",
    "lib/shopkit/client/orders.rb",
    "lib/shopkit/client/products.rb",
    "lib/shopkit/client/shop.rb",
    "lib/shopkit/client/webhooks.rb",
    "lib/shopkit/configuration.rb",
    "lib/shopkit/connection.rb",
    "lib/shopkit/request.rb",
    "lib/shopkit/version.rb",
    "shopkit.gemspec",
    "spec/json/order.json",
    "spec/json/orders.json",
    "spec/json/products.json",
    "spec/json/shop.json",
    "spec/json/webhook.json",
    "spec/shopkit/client/orders_spec.rb",
    "spec/shopkit/client/products_spec.rb",
    "spec/shopkit/client/shop_spec.rb",
    "spec/shopkit/client/webhooks_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/saberma/shopkit"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "a gem for the ShopQi API"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.8.1"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.8.8"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.8.7"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.8.1"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.8.8"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<webmock>, ["~> 1.8.7"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.8.1"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.8.8"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<webmock>, ["~> 1.8.7"])
  end
end

