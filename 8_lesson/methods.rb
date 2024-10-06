class Cat
    attr_reader :age

    # метод образца класса (instance method)
    def initialize(age)
        @age = to_cat_years(age)
        Cat.speak
    end

    def age
        return @age
    end

    def age=(new_age)
        @age = new_age
    end  

    def birthday
        # puts "Мой текущий возраст #{self.age}"
        puts "Мой текущий возраст #{age}"
        self.age = self.age + 1
        puts "Мой текущий возраст #{age}"
    end

    # метод класса (class method)
    # def Cat.speak
    def self.speak #как this
        puts "meow!"
        puts self.inspect
    end

    def sample(age, name, *args)
        puts args.inspect
    end
    
    private
    def to_cat_years(human_age)
        human_age.to_f / 4
    end


end

animal = Cat.new 40
animal.birthday

# Cat.speak