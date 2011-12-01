#encoding: utf-8
require "spec_helper"

describe YoudaoFanyi do
  it "should has reload!" do
    YoudaoFanyi.should respond_to(:reload!)
  end

  it "should has api_key" do
    YoudaoFanyi.should respond_to(:api_key)
  end

  it "should fast define api_keys and rand use api_key from api_keys" do
    YoudaoFanyi.configure do |config|
      config.api_keys = YOUDAO_FANYI_API_KEYS
    end
    YoudaoFanyi::Configuration.api_keys.should include(YoudaoFanyi.api_key())
  end

  it "should has t" do
    YoudaoFanyi.should respond_to(:t)
  end

  it "t alias YoudaoFanyi::Translator.t" do
    YoudaoFanyi.t(:china).should == ["中国"]
  end
end

