#YoudaoFanyi

YoudaoFanyi is a http://fanyi.youdao.com api library for Ruby and Rails3. it only support en<=>zh-CN translate.

* https://github.com/vkill/youdao_fanyi

##Supported versions

* Ruby 1.8.7, 1.9.2, 1.9.3

* Rails 3.0.x, 3.1


##Use in Ruby scripts

more see `examples/translate.rb`.

    #encoding: utf-8
    require "pp"
    require "youdao_fanyi"

    YoudaoFanyi.configure do |config|
      config.api_keys = [
        { "keyfrom" => "blog-vkill-net", "key" => "2022446265" }
      ]
    end

    puts YoudaoFanyi.t("china")

    YoudaoFanyi::Translator.translate("china", :i, nil, true, false, "") do |results|
      p [results.error_code, results.translation, results.query]
      pp results.results
    end

##Use in Rails3

###Installation

In your app's `Gemfile`, add:

    gem "youdao_fanyi", :group => [:development]

Then run:

    > bundle
    > rails generate youdao_fanyi:install

Configure your http://fanyi.youdao.com api keys, edit `config/youdao_fanyi_api_keys.yml`

Configure use proxy, edit `config/initializers/youdao_fanyi.rb`


###Uninstallation from Rails3

Run:

    > rails destroy youdao_fanyi:install


###Usage Examples

basic example in the rails console, more see `examples/translate.rb`.

    > YoudaoFanyi.t(:i)   => ["我"]
    > YoudaoFanyi.t(:i, :china)   => ["我", "中国"]


When your want translate models attributes, please use https://github.com/vkill/i18n_attributes, it auto use this gem. (WARN: this function wait support!!!)


##Use in shell

    > # youdao_fanyi --key 2022446265 --keyfrom blog-vkill-net "详细" i you


##Copyright

Copyright (c) 2011 vkill.net .

