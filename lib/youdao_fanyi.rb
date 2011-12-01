#encoding: utf-8
$KCODE = 'u' unless RUBY_VERSION >= "1.9"

require "youdao_fanyi/version"

require "active_support/core_ext/object"
require "yaml"
require "httparty"
require "json"
require "uri"
#require "cgi"

require "youdao_fanyi/errors"
require "youdao_fanyi/configuration"
require "youdao_fanyi/connector"
require "youdao_fanyi/translator"

module YoudaoFanyi
  def self.configure
    yield Configuration
    reload!
  end

  def self.reload!
    load "youdao_fanyi/connector.rb"
    load "youdao_fanyi/translator.rb"
  end

  def self.api_key
    YoudaoFanyi::Configuration.api_keys.sort_by!{rand()}.first
  end

  def self.t(*words)
    YoudaoFanyi::Translator.t(*words)
  end
end

