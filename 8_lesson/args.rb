class Sample
    def my_method(arg1, arg2, arg3 = :test)
        puts arg1, arg2, arg3
    end

    def new_way(arg1:, arg2:, arg3: :test, arg4: 100)
        puts arg1, arg2, arg3
    end

    def portery(num, h1, h2)
        puts num
        puts h.inspect
    end
end

s = Sample.new
s.portery(42, {first_hash: "hello"}, key1: 1, key2: "test")

# s.my_method(1, 2)
# s.new_way(arg2: "hello!", arg1: 'hi')

# h = {key1: 1, key2: "test"}