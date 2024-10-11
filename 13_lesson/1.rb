def div(a,b)
  retries = 0
  max_retries = 3
  begin
    result = a / b
  rescue ZeroDivisionError => e
    puts "Произошла ошибка класса #{e.class.name}:\n#{e.message}"
  else
    raise
    puts("Результат деления равен #{result}")
        # rescue => e
        # if retries < max_retries
        #     sleep 1
        #     retry
        #     retries +=1
        #     puts retries
        #   else
        #     puts("Нельзя повторять попытку больше #{max_retries} раз")
        #   end
  ensure # в любом случае выполнить этот код
    puts 'ENSURE!'
  end
end

puts div(10, 2)

begin
    puts div(10,0)
rescue => e
end