p = Proc.new {
    puts 'hello from proc!'
}

p2 = Proc.new do |a, b|
    result = a + b
    puts "hello from proc! #{result}"
end

p3 = proc { puts "my proc!"}

def caller(my_proc, my_proc2)
   my_proc.call(10,20)
   my_proc2.call("hello from caller!")
   yield(my_proc, my_proc2)
end

caller(p, p2) do |proc1, proc2|
    proc1.call(10, 20)
end

p.call
p3.call
p2.call(10, 20)