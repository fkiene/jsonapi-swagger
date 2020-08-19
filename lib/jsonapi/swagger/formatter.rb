module Jsonapi
  module Swagger
    class UnderscoredFormatter
    end

    class CamelizedFormatter
      class << self
        def format(key)
          key.camelize(:lower)
        end

        def unformat(formatted_key)
          formatted_key.to_s.underscore
        end
      end
    end

    class DasherizedFormatter
      class << self
        def format(key)
          key.underscore.dasherize
        end

        def unformat(formatted_key)
          formatted_key.to_s.underscore
        end
      end
    end
  end
end
