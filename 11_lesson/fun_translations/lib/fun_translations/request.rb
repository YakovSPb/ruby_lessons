module FunTranslations
    module Request
        include FunTranslations::Connection
        
        def post(path, client,  params = {})
        respond_with(
            connection(client).post(path, params)
        )
        end

        private

        def respond_with(raw_response)
           body = raw_response.body.empty? ?
            raw_response.body: JSON.parse(raw_response.body)

            response_with_error(raw_response.status, body) if !raw_response.success?

            body['contents']
        end

        def respond_with_error(code, body)
        end
    end
end