def demo(*args)
    sum = 0
    args.each do |next_arg|
        result = yield(next_arg)
        sum = sum + next_arg if result
    end
    # if block_given?
    #    # выполнить тот блок, который был передан в метод
    #    arg.each do |next_arg|
    #     yield next_arg
    #    end
    # end
    puts sum
end
 
demo(100, 50, 2, 3, 5, 6, 7) do |el|
    el.odd?
end

demo(100, 50, 2, 3, 5, 6, 7) do |el|
    el.even?
end


# [1,2,3].each do |el|
#     puts el
# end

# new_arr = [1,2,3].map do |el|
#     el * 2
# end

