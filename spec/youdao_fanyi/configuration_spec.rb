#encoding: utf-8
require "spec_helper"

describe YoudaoFanyi::Configuration do

  let(:default_configuration) { [{ "keyfrom" => "test.vkill.net", "key" => "1234567890" }] }

  it "default configuration should defined" do
    YoudaoFanyi::Configuration.api_keys.should == default_configuration

    YoudaoFanyi::Configuration.http_proxy.should == nil
  end


end

