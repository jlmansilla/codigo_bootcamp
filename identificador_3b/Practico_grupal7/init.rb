#Menú
begin
    print "|-----------------------------------------------------|\n"
    print "     Bienvenido al Identificador de precios 3b's       \n"
    print "|-----------------------------------------------------|\n"
    print "Presione una tecla para continuar...\r"
    gets
    print "-----------------Catalogos de Producto-----------------\n\n"

    print "Qué acción quieres realizar:\n"
    print "1.- Alta de marca\n"
    print "2.- Alta de categoría\n"
    print "3.- Alta de producto\n"
    print "4.- Buscar producto por clave\n"
    print "0.- Para salir del programa\n"

    opcion = gets.chomp.to_i

    case opcion
    when 1 then marca()
    when 2 then categoria()
    when 3 then producto()
    when 4 then clave_producto()
    else
        return 0
    end

end while (opcion!=0)
    =begin
    Encabezado
    Esta sección genera un encabezado para la impresión del catálogo de productos
    
=end
#-----------------------------------------Encabezado--------------------------------------------
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
print "Catálogo de productos"
puts "-" * 10
#-----------------------------------------Fin Encabezado-------------------------------------------
begin
    puts "Que acción quieres realizar"
    puts "1. Alta de marca"
    puts "2. Alta de categoría"
    puts "3. Alta de producto"
    puts "4. Buscar producto por clave"

    opcion = gets.chomp.to_i
    

    
end while opcion != 0