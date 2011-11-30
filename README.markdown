#YoudaoFanyi

YoudaoFanyi is a http://fanyi.youdao.com api library for Ruby and Rails3.

* https://github.com/vkill/youdao_fanyi

##Supported versions

* Ruby 1.8.7, 1.9.2, 1.9.3

* Rails 3.0.x, 3.1


##Installation

In your app's `Gemfile`, add:

    gem "youdao_fanyi", :group => [:development]

Then run:

    > bundle
    > rails generate youdao_fanyi:install

Configure your http://fanyi.youdao.com api keys, edit `config/initializers/youdao_fanyi.rb`


##Uninstallation

Run:

    > rails destroy youdao_fanyi:install


##Usage Example

When your want translate models attributes, please use [i18n_attributes][https://github.com/vkill/i18n_attributes], it auto use this gem.


##Copyright

Copyright (c) 2011 vkill.net .

