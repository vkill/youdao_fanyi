#encoding: utf-8
require "rubygems"
require "bundler/setup"
require "pry"

#loading rspec
Dir[File.expand_path("../support/**/*.rb", __FILE__)].each {|f| require f}
RSpec.configure do |config|
end

require "youdao_fanyi"

YOUDAO_FANYI_API_KEYS = YAML.load_file(
                          File.expand_path("../support/youdao_fanyi_api_keys.yml", __FILE__)
                        )["youdao_fanyi_api_keys"]

