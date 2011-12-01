#encoding: utf-8

module YoudaoFanyi
  module Errors
    def self.error_message(error_code)
      "ERROR:" + case error_code.to_i
      when 50
        "key or keyfrom error!"
      else
        "unknow error!"
      end
    end
  end
end

