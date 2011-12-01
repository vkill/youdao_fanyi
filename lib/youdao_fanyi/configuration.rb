#encoding: utf-8

# YoudaoFanyi::Configuration.http_proxy = 'http://127.0.0.1:8118'

module YoudaoFanyi
  Configuration = Struct.new(
    :api_keys,
    :http_proxy
  ).new(
    [{ "keyfrom" => "test.vkill.net", "key" => "1234567890" }],
    nil
  )
end

