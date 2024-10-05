require 'faraday'
require 'json'

puts 'Введите название породы собаки на английском'
query = gets.strip.downcase

url = 'https://api.thecatapi.com/v1/breeds/search?q=' + query

token = '060465b0-40db-48a1-a93e-66c0c3471716'

response = Faraday.get(url, {"Authorization" => "Bearer #{token}"})

raw_breeeds = JSON.parse(response.body)

breeeds = raw_breeeds.map{|breed| breed['name']}

puts breeeds.inspect


# result 's'
# ["Abyssinian", "American Shorthair", "Australian Mist", "Balinese", "British Longhair", "British Shorthair", "Burmese", "California Spangled", "Chausie", "Colorpoint Shorthair", "Cornish Rex", "Cyprus", "Exotic Shorthair", "Japanese Bobtail", "Javanese", "Norwegian Forest Cat", "Persian", "Russian Blue", "Savannah", "Scottish Fold", "Selkirk Rex", "Siamese", "Siberian", "Singapura", "Snowshoe", "Somali", "Sphynx", "Tonkinese", "Turkish Angora", "Turkish Van", "Donskoy"]