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
clave = gets.chomp.to_s
puts "Ingresa Nombre:"
nombre = gets.chomp.to_i

puts "Ingresa la marca:"
marca = gets.chomp.to_s
puts "Ingresa Unidad:"
nombre = gets.chomp.to_i

puts "Ingresa la precio:"
precio = gets.chomp.to_i
puts "Ingresa categoria:"
categoria = gets.chomp.to_s

if precio < 1000
    precio_tipo = " USD"
else
    precio_tipo += " CLP"
end

puts "Clave: " + clave
puts "Nombre: " + nombre
puts "Marca: " + marca
puts "Precio: " + precio.to_s + precio_tipo
puts "Unidad: " + unidad
puts "Categoria: " + categoria
