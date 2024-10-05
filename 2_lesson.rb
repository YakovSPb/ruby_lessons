puts "Введите свой возраст"
age = gets.to_i

puts "Введите свою страну..."
country = gets.strip

puts country.inspect


if (country == "Япония" || country == "США") ** age >= 21
    puts('Доступ открыт')
elsif  age >= 18
    puts('Доступ открыт')    
else
    puts('Доступ закрыт')
end    
