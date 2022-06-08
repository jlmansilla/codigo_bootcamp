puts "-" * 60
print "|"
print "" * 20
print "Bienvenido al identificador de precios 3b's"
print "|"
puts ""
puts "-" *60
puts
puts
puts "-" * 10
print "Ingresa la siguiente información del producto"
puts "-" * 10

puts "Ingresa la clave:"
clave = gets.chomp

puts "Ingresa Nombre:"
nombre = gets.chomp

puts "Ingresa la marca:"
marca = gets.chomp

puts "Ingresa Unidad:"
unidad = gets.chomp

puts "Ingresa el precio:"
precio = gets.chomp.to_i



if precio < 1000
    puts "¿La cantidad es en dólares? Si(1), No(2)"
    respuesta= gets.chomp
    if respuesta == "1"
        precio_string = "$#{precio} USD, Precios USD"
        
    elsif respuesta == "2"
        precio_string = "$#{precio} CLP, Precios CLP"
        
    end
else
    precio_string = "#{precio} CLP, Precios CLP"
    
    
end




puts "Ingresa categoria:"
categoria = gets.chomp


print "\n\n La información del producto capturada es:\n\n
clave: #{clave}
nombre: #{nombre}
marca: #{marca}
unidad: #{unidad}
precio: #{precio_string}
categoria: #{categoria} \n\n"