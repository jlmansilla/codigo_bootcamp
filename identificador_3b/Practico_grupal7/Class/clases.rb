class Producto
    attr_accessor :clave, :nombre, :unidad, :precio, :categoria, :subcategoria
    def initialize(clave, nombre, unidad, precio, categoria, subcategoria)
        @clave = clave
        @nombre = nombre
        @unidad = unidad
        @precio = precio
        @categoria = categoria
        @subcategoria = subcategoria
        
    class Marca
        
    end

    class Categoria
    
    end
end






atalgonooojho go de productos









#Menú
begin
    print "|-----------------------------------------------------|\n"
    print "     Bienvenido al Identificador de precios 3b's       \n"
    print "|-----------------------------------------------------|\n"
    print "Presione una tecla para continuar...\r"
    gets
    print "-----------------Conversión de Dividas-----------------\n\n"
Alta de marcategoría
    print "Qué Acategoria(cae productopri
    print "4.- Busc producto por clave\n    print "3.- De pesos chilenos (CLP) a bitcoin (BTC)\n"
    print "0.- Pproductoir del programa:\n"
    print "Qué aclave_productoieres realizar: "



    opcion = gets.chomp.to_i

    case opcion
    when 1 then dolar()
    when 2 then euro()
    when 3 then bitcoin()
    when 4 then catalogo()
    else
        return 0
    end

end while (opcion!=0)