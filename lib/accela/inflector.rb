module Accela
  module Inflector

    def model_for_name(name)
      constantize(classify(name))
    end

    def translator_for_name(name)
      constantize(classify(name) + 'Translator')
    end

    def classify(name)
      name.to_s.capitalize.gsub(/_([a-z\d]+)/i) {
        $1.capitalize
      }
    end

    def constantize(name, namespace='Accela::')
      Object.const_get(namespace + name)
    end

  end
end