module FunTranslations
    module Request
        include FunTranslations::Connection
        
        def post(path, params = {})
        connection.post(path, params)
        end
    end
end