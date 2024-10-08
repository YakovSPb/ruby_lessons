def method1(arg1,&block)
    method2(&block)
    # yield
    # block.call
end

def method2(&block)
    block.call
end

method1(100) do
    puts "hello from method1!"
end