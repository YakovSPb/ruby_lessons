require 'yaml'

a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0
puts "Введите ваше имя:"
name = gets.strip

current_time = Time.now.strftime('%Y-%m-%d_%H-%M-%S')
filename = "QUIZ_#{name}_#{current_time}.txt"
File.write(filename, "Результаты для пользователя #{name}\n\n#{current_time}", mode: 'a')

all_questions = YAML.load_file('questions.yml')


all_questions.shuffle.each do |question_data|
    # puts question_data
    formatted_question = "\n\n=== #{question_data['question']} ===\n\n"

    puts formatted_question

    File.write(filename, formatted_question, mode: 'a')

    correct_answer = question_data['answers'].first

    answers = question_data['answers'].shuffle.each_with_index.inject({}) do |result, (answer, i)|
    answer_char = (a_code + i).chr
    result[answer_char] = answer
        
    puts "#{answer_char}. #{answer}"

    result
    end    
    user_answer_char = nil

    loop do
        puts 'Ваш ответ:'
        user_answer_char = gets.strip[0]
        if user_answer_char.between?('A', 'D')
            break
        else
            puts "Ответ только A - D"
        end
    end

    File.write(filename, "Ответ пользователя: #{answers[user_answer_char]}\n\n", mode: 'a')
    
    if answers[user_answer_char] == correct_answer
        puts "Верно!"
        correct_answers = correct_answers + 1

        File.write(filename, "Верный ответ", mode: 'a')
    else
        puts "Неверно!"
        puts "Правильный ответ: #{correct_answer}"
        incorrect_answers = incorrect_answers + 1
        File.write(filename, "Неверно ответ! Правильный ответ: #{correct_answer}", mode: 'a')
    end
end    

File.write(filename, "\n\n Правильных ответов: #{correct_answers}", mode: 'a')
File.write(filename, "\n\n Неправильных ответов: #{incorrect_answers}", mode: 'a')

correct_answer_percentage = (correct_answers / all_questions.length.to_f) * 100

File.write(filename, "\n\n Процент правильных ответов: #{correct_answer_percentage.floor(2)}%\n\n", mode: 'a')