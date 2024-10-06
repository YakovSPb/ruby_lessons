class Animal
    attr_accessor :age, :name

    def initialize(name, age)
        @name = name
        @age = age
    end

    def speak
        puts "это просто общий класс для животных..."
    end    
end

class Dog < Animal
    def speak
        puts "WOOF!"    
    end    

    def eat(amount)
        if amount > 0.5
            puts "Я столько не сьем!"
        else
           puts "Вкусно!"     
        end    
    end
end

class Cat < Animal
    def speak
        puts "MEOW!"    
    end    
    def eat(amount)
        if amount > 0.3
            puts "Я столько не сьем!"
        else
           puts "Вкусно!"     
        end    
    end
end

class SmallDog < dog
end

dog = Dog.new "Scooby", 10
dog.speak
dog.eat(1)

# animal = Animal.new
# animal.speak