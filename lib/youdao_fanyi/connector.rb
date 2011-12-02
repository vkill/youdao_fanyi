#encoding: utf-8

module YoudaoFanyi
  class Connector

    attr_accessor :key, :keyfrom
    attr_reader :q, :results, :response, :error_code, :translation, :query

    include HTTParty

    base_uri 'http://fanyi.youdao.com/fanyiapi.do'
    default_params :type => :data, :doctype => :json, :version => 1.1

    # YoudaoFanyi::Configuration.http_proxy = 'http://127.0.0.1:8118'
    #or
    # > export http_proxy=http://localhost:8118
    if proxy = YoudaoFanyi::Configuration.http_proxy || ENV['http_proxy']
      proxy = URI.parse(proxy)
      http_proxy proxy.host, proxy.port
    end

    def initialize
      api_key = YoudaoFanyi.api_key()
      @key = api_key["key"] || api_key[:key]
      @keyfrom = api_key["keyfrom"] || api_key[:keyfrom]
    end

    def request(word, *options)
      options = options.extract_options!
      @q = word.to_s.gsub("_"," ")
      @response = self.class.get('', :query => {:q => @q}.merge(:key => @key, :keyfrom => @keyfrom))
      @results = JSON.load(@response.body)
      @error_code, @query = @results['errorCode'], @results['query']
      @translation = @error_code == 0 ? @results['translation'].first : YoudaoFanyi::Errors.error_message(@error_code)
      self
    end

  end
end

