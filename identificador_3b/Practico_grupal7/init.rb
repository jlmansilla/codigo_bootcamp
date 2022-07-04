require "../Class/clases.rb" # Importamos las clases
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
    when 1 then mimarca = Marca.new()
    when 2 then micategoria = Categoria.new()
    when 3 then miproducto = Producto.new()
    when 4 then 
        puts "Ingrese la clave del producto que desea buscar:"
        clave = gets.chomp
        miproducto.buscar_producto()
    when 0 then puts "Gracias por usar el programa"
    else
        puts "Opción no válida"
    end
    

end while (opcion!=0)
    