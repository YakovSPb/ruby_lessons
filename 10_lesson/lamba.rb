my_1 = lamba {|str| puts str}
my_1.call("hello from lambda!")

my_l2 = -> {puts "thin arrow"}
my_l2.call