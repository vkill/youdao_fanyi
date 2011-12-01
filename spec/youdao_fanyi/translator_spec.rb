#encoding: utf-8
require "spec_helper"

describe YoudaoFanyi::Translator do

  before {
    YoudaoFanyi::Configuration.api_keys = YOUDAO_FANYI_API_KEYS
    YoudaoFanyi.reload!
  }

  it "should has translate" do
    YoudaoFanyi::Translator.should respond_to(:translate)
  end

  it "translate return a instance of YoudaoFanyi::Connector" do
    YoudaoFanyi::Translator.translate(:china).first.should be_instance_of(YoudaoFanyi::Connector)
  end

  it "!translate return a instance of self" do
    YoudaoFanyi::Translator.translate(:china, :not_translate => true).should be_instance_of(YoudaoFanyi::Translator)
  end

  it "translate special word" do
    translator = YoudaoFanyi::Translator.translate(nil, true, false, "", :not_translate => true)
    translator.queries.should == ['nil', 'true', 'false', 'nil']
  end

  it "should has t" do
    YoudaoFanyi::Translator.should respond_to(:t)
  end

  it "only return translation when use t()" do
    YoudaoFanyi::Translator.t(:china).should == ["中国"]
    YoudaoFanyi::Translator.t(:china, :i).should == ["中国", "我"]
  end


end

