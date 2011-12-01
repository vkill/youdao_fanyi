class YoudaoFanyi::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def create_yml_file
    template "youdao_fanyi_api_keys.yml", 'config/youdao_fanyi_api_keys.yml'
  end

  def create_initializer_file
    template "youdao_fanyi.rb", 'config/initializers/youdao_fanyi.rb'
  end


end

