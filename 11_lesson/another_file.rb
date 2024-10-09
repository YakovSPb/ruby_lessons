require_relative 'my_lib'

class AnotherParent
    extend MyLib
end

class AnotherClass < AnotherParent
    include MyLib

    def my_instance_method
        puts "Hi from AnotherMyClass!"
        helper2()
    end
end

obj = AnotherClass.new
obj.my_instance_method