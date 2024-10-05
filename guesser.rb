random_number = (rand * 10).to_i + 1

puts "Я загадал число от 0 до 9"

iterations = 0

loop do
    iterations = iterations + 1

    if iterations > 9000
        break
        puts 'слишком много попыток'
    end    

    guess = gets.to_i
    if random_number == guess
        puts 'Молодец'
        break
    elsif random_number < guess    
        puts 'Нет, мое число меньше'
    else
        puts 'Нет, мое число больше'
    end
end
puts random_number