#encoding: utf-8

module YoudaoFanyi
  class Translator
    attr_reader :queries

    def initialize(*options)
      options.extract_options!.each {|k,v| instance_variable_set :"@#{k.to_s}", v}
    end

    def self.translate(*words, &block)
      options = words.extract_options!
      not_translate = options.delete(:not_translate) || false
      words = format_words(words)
      if not_translate
        self.new(:queries => words)
      else
        words.map do |word|
          connector = YoudaoFanyi::Connector.new.request(word)
          block ? (yield connector) : connector
        end
      end
    end

    def self.t(*words)
      translate(*words) {|connector| connector.translation}
    end

    private
      def self.format_words(words)
        words.map do |word|
          case word
          when nil, ""
            'nil'
          else
            word.to_s
          end
        end.keep_if {|x| !x.to_s.empty?}
      end

  end
end

