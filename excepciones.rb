def divide(x, y)
  begin
    result = x / y
  rescue ZeroDivisionError => e
    puts e.message
  end
    
end
puts divide(1, 2)
puts divide(2, 0)