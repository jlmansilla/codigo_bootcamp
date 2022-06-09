renglones = File.readlines("footer.txt")
renglones.each do |r|
    puts renglones
end

require 'csv'
resultado = CSV.read("mexican_food.csv")
print resultado

File.open("footer.txt", "w") do |file|
    file.write ("Programando...")
end