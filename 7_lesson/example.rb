class Animal
    attr_accessor :age
    attr_reader :name # метод только для чтения
    attr_writer :name # метод для изменения

    def initialize(name, age)
        @name = name
        @age = age
    end
    
    # def age
    #     @age
    # end    
    
    # def age2=(age)
    #     @age = age
    # end    
    # def new_age(age)
    #     @age = age
    # end    
    # def birthday()
    #     @age = @age + 1
    # end   
end

animal1 = Animal.new("Kotopes", 3)
animal2 = Animal.new("Pesokot", 4)

# # animal1.new_age(4)
# # animal2.birthday()
# animal1.age2 = 40

# animal1.age
# animal2.age

puts animal1.age
animal2.name = "NEW PESOKOT"
puts animal2.name