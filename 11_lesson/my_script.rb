# require_relative 'importer'
# require_relative 'printer'

# importer = Importer::Engine.new
# printer = Printer::Engine.new
require_relative 'my_lib'

class Parent
end

class MyClass < Parent
    include MyLib

    def my_instance_method
        puts "Hi from MyClass!"
    end

end