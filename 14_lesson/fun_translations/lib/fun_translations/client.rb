module FunTranslations
    class Client
        include FunTranslations::Request

        attr_accessor :token

        def initialize(token = nil)
            @token = token
        end

        def translate(endpoint, text, params = {})
            FunTranslations:: Translation.new(post(
                "/translate/#{endpoint}.json",
                self,
                 {test: text}.merge(params)))
        end
    end
end