require 'yaml'
require_relative 'questions'

class QuestionData
    attr_reader :collection

    def initialize(filename = 'questions.yml')
        @collection = load_from filename
    end

    private

    def load_from(filename)
        YAML.load_file(filename).shuffle.map do |q_data|
            Question.new q_data[:question], q_data['answers']
        end
    end
end