require 'yaml'

class FileWriter
    def initialize(filename, mode)
    @filename = "QUIZ_#{name}_#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.txt"
    @mode = mode
    
    end

    def write(content)
        File.write(
            @filename,
            content,
            mode: @mode
        )
    end    
end

class Questions
    def initialize(filename)
        @filename = filename
    end

    def load
        YAML.load_file(@filename)
    end
end


a_code = 'A'.ord
correct_answers = 0
incorrect_answers = 0
puts "Введите ваше имя:"
name = gets.strip


questions = Questions.new('questions.yml')

writer = FileWriter.new('a')
writer.write(filename, "Результаты для пользователя #{name}\n\n#{current_time}", mode: 'a')

questions.shuffle.each do |question_data|
    # puts question_data
    formatted_question = "\n\n=== #{question_data['question']} ===\n\n"

    puts formatted_question

    writer.write(formatted_question)

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

    writer.write("Ответ пользователя: #{answers[user_answer_char]}\n\n")
    
    if answers[user_answer_char] == correct_answer
        puts "Верно!"
        correct_answers = correct_answers + 1

        writer.write("Верный ответ")
    else
        puts "Неверно!"
        puts "Правильный ответ: #{correct_answer}"
        incorrect_answers = incorrect_answers + 1

        writer.write("Неверно ответ! Правильный ответ: #{correct_answer}")
    end
end  