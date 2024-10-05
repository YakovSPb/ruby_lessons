members = ['Anton', 'Ivan', 'Lesha']
members << 'L'

members.each.with_index do |member, current_index|
    puts 'index ' + current_index.to_s
    puts member
end