# p = proc {|arg| puts "hello from proc"}

# p.call("test", 1, 2)

# l = ->(arg1) { puts "hello from lambda"}

# l.call("test", 1, 2)


def demo(obj)
    puts "before obj call"
    obj.call
    puts "after obj call"
end

p = proc do
    puts "I'm inside proc!"
    return 42
end

demo(p)
