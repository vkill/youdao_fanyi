#encoding: utf-8
require "spec_helper"

describe YoudaoFanyi::Connector do

  before {
    YoudaoFanyi::Configuration.api_keys = YOUDAO_FANYI_API_KEYS
    YoudaoFanyi.reload!
  }

  let(:base_uri) { 'http://fanyi.youdao.com/fanyiapi.do' }
  let(:default_params) { {:type => :data, :doctype => :json, :version => 1.1 } }

  def translate(response, query, translation)
    results = JSON.load(response.body)
    results["errorCode"].to_i.should == 0
    results["query"].should == query.to_s
    results["translation"].include?(translation.to_s).should be_true
  end

  it "should included HTTParty" do
    YoudaoFanyi::Connector.include?(HTTParty).should be_true
  end

  it "base_uri should defined" do
    YoudaoFanyi::Connector.default_options[:base_uri].should == base_uri
  end

  it "default_params should defined" do
    YoudaoFanyi::Connector.default_params[:type].should == default_params[:type]
    YoudaoFanyi::Connector.default_params[:doctype].should == default_params[:doctype]
    YoudaoFanyi::Connector.default_params[:version].should == default_params[:version]
  end

  it "use proxy" do
    YoudaoFanyi::Configuration.http_proxy = 'http://127.0.0.1:8118'
    YoudaoFanyi.reload!
    YoudaoFanyi::Connector.default_options[:http_proxyaddr] = '127.0.0.1'
    YoudaoFanyi::Connector.default_options[:http_proxyport] = '8118'
    YoudaoFanyi::Configuration.http_proxy = ''
    YoudaoFanyi.reload!
    #ENV['http_proxy']
  end

  it "translate china should return 中国 by class method" do
    response = YoudaoFanyi::Connector.get(
                    '', :query => {:q => :china}.merge(YoudaoFanyi.api_key())
                )
    translate(response, :china, "中国")
  end

  it "when initialize, @key and @keyfrom should defined" do
    connector = YoudaoFanyi::Connector.new
    connector.key.to_s.empty?.should be_false
    connector.keyfrom.to_s.empty?.should be_false
  end

  it "translate china should return 中国 by instance method" do
    connector = YoudaoFanyi::Connector.new
    response = connector.class.get(
                    '', :query => {:q => :china}.merge(:key => connector.key, :keyfrom => connector.keyfrom)
                )
    translate(response, :china, "中国")
  end

  it "use translate function" do
    connector = YoudaoFanyi::Connector.new.request(:china)
    if connector.error_code == 0
      connector.translation.should == "中国"
    else
      connector.translation.should_not == "中国"
      connector.translation.should match(/^ERROR:/i)
    end
    connector.response.should_not be_nil
    connector.results.should_not be_nil
  end

  it "translate function should escape string" do
    connector = YoudaoFanyi::Connector.new.request(:china)
    connector.q.should == "china"
    connector = YoudaoFanyi::Connector.new.request("中国")
#    connector.q.should == "%E4%B8%AD%E5%9B%BD" #CGI::escape
    connector.q.should == "中国"
    connector = YoudaoFanyi::Connector.new.request(:created_at)
    connector.q.should == "created at"
  end
end

