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

puts "\n¿Cuántos productos desea dar de alta? :"
alta = gets.chomp.to_i
suma_usd = 0
suma_clp = 0

for i in 1..alta do
    

    puts "\nIngresa la clave del producto #{i}:"
    clave = gets.chomp

    puts "Ingresa Nombre:"
    nombre = gets.chomp

    puts "Ingresa la marca:"
    marca = gets.chomp

    puts "Ingresa Unidad:"
    unidad = gets.chomp

    puts "Ingresa el precio:"
    precio = gets.chomp

    if  precio.to_i < 1000 
        precio_string = precio + " USD"
        suma_usd += precio.to_i
    else
        precio_string = precio + " CLP"
        suma_clp += precio.to_i
    end

    puts "Ingresa categoria:"
    categoria = gets.chomp


    print "\n\nLa información del producto capturada es:
    clave: #{clave}
    nombre: #{nombre}
    marca: #{marca}
    unidad: #{unidad}
    precio: #{precio_string}
    categoria: #{categoria}\n"

end

print "-" * 16
print "Las sumas totales son:"
puts "-" * 8
puts "La suma de los precios capturados en USD es: #{suma_usd}"
puts "La suma de los precios capturados en CLP es: #{suma_clp}"

