data = {
    'РФ' => 'Москва',
    'Китай' => 'Пекин',
    'Франция' => 'Париж',
    'Великобритания' => 'Лондон',
    'Норвегия' => 'Осло',
    'Камбоджа' => 'Пномпень'
}

keys = data.keys.shuffle

puts keys




# countries.each.with_index do |country, index|
# data.each do |country, capital|

#     puts "Страна #{country}"

#     user_input = gets.strip.downcase

#     if user_input == capital.downcase
#         puts "Молодец!"
#     else
#         puts "Ошибка"
#         puts "Правильный ответ #{capital}"
#     end      
# end    