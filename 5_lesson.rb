require 'faraday'

url = 'https://thecatapi.com/v1/breeds'

token = '060465b0-40db-48a1-a93e-66c0c3471716'

response = Faraday.get(url, {"Authorization" => "Bearer #{token}"})

puts response.body