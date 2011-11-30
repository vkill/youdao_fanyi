# -*- encoding: utf-8 -*-
require File.expand_path('../lib/youdao_fanyi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["vkill"]
  gem.email         = ["vkill.net@gmail.com"]
  gem.description   = "A http://fanyi.youdao.com api library for Ruby."
  gem.summary       = "A http://fanyi.youdao.com api library for Ruby."
  gem.homepage      = "https://github.com/vkill/youdao_fanyi"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "youdao_fanyi"
  gem.require_paths = ["lib"]
  gem.version       = YoudaoFanyi::VERSION

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "pry"

  gem.add_dependency "httparty", "~> 0.8.1"
end

