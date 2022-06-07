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

puts "Ingresa el precio:"
precio = gets.chomp.to_i

if precio < 1000
    puts "¿La cantidad es en dólares? Si(1), No(2)"
    respuesta= gets.chomp
    if respuesta == "1"
        precio_string = "#{precio} USD"
    elsif respuesta == "2"
        precio_string = "#{precio} CLP"
    end
else
    precio_string = "#{precio} CLP"
end

puts "Ingresa Unidad:"
unidad = gets.chomp


puts "Ingresa categoria:"
categoria = gets.chomp



#precio_string=precio.to_s
puts "Clave: " + clave
puts "Nombre: " + nombre
puts "Marca: " + marca
puts "Precio: " + precio_string
puts "Unidad: " + unidad
puts "Categoria: " + categoria
