puts "-" * 60
print "|"
print " " * 8
print "Bienvenido al identificador de precios 3b's"
print " " * 7
print "|"
puts ""
puts "-" *60
puts
puts
print "-" * 10
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
precio = gets.chomp

puts "¿La cantidad es en dólares? Si(1), No(2)"
    respuesta= gets.chomp
if  respuesta == "1"
    precio.to_i < 1000 
    precio_string = precio + " USD"
else
    precio_string = precio + " CLP"
end

puts "Ingresa categoria:"
categoria = gets.chomp


print "\n\nLa información del producto capturada es:
clave: #{clave}
nombre: #{nombre}
marca: #{marca}
unidad: #{unidad}
precio: #{precio_string}
categoria: #{categoria}"