def productos()
    puts "\n¿Cuántos productos desea ingresar al arreglo? :"
    cantidad = gets.chomp.to_i
    array = []

    for i in (0..cantidad-1) do
        print "----------------- Producto #{i + 1}-----------------\n\n"
        print "* Clave          :" 
        clave = gets.chomp.to_i
        print "* Nombre         :" 
        nombre= gets.chomp
        print "* Unidad         :" 
        unidad= gets.chomp
        print "* Precio         :" 
        precio= gets.chomp.to_i
        print "* Categoria      :" 
        categoria= gets.chomp
        print "* SubCategoria   :" 
        subcategoria= gets.chomp
        
        
        array[i] = clave,nombre,unidad,precio,categoria,subcategoria
        
    end
    
    print "Usted ha creado el siguiente arreglo de #{cantidad} productos #{array}"
    
    return array
end

def precios()
    puts "\n¿Cuántos precios desea ingresar al arreglo? :"
    cantidad = gets.chomp.to_i
    array = []

    for i in (0..cantidad-1) do
        print "----------------- Precio #{i + 1}-----------------\n\n"
        
        print "* Precio         :" 
        precio= gets.chomp.to_i
        
        
        
        array[i] = precio
        
    end
    
    print "Usted ha creado el siguiente arreglo de #{cantidad} precios #{array}\n"
    return array
end

def impuestos()
    precios_finales = []
    precios().each_with_index do |item, i|
        puts "El precio con IVA del producto #{i+1} es #{item + item*0.19}"
        precios_finales << item + item*0.19
    end
    print "Su arreglo de precios finales es #{precios_finales}\n"
    return precios_finales
end    

def ordenar()
     
    puts "Su arreglo ordenado sería: #{impuestos().sort}"
end

def buscar()
    print "ingrese el código de producto a buscar: "
    num = gets.chomp.to_i
    sw = 0
    productos().each do |item|
        if item.first == num
            print "\nUsted ha buscado el siguente producto#{item}\n"
            sw= 1
        end
    end
    if sw == 0
        print "\nEl producto que buscó no fue encontrado"
    end
end

def buscar_precio()
    print "Selecciones una opción\n"
    print "1.- Precio mínimo\n"
    print "2.- Precios máximo:\n"
    print "3.- Precios específico:\n"
    print "ingrese el su opción: "
    opcion = gets.chomp.to_i
    sw = 0
    case opcion
        when 1 then puts "El precio menor es: #{precios().min}"
        when 2 then puts "El precio mayor es: #{precios().max}"
        when 3 then 
            print "ingrese el precio de producto a buscar: "
            num = gets.chomp.to_i
            precios().each do |item|
                if item == num
                    print "\nUsted ha buscado y encontrado el siguente precio #{item}\n"
                    sw= 1
                end
        
            end
        
            if sw == 0
                print "\nEl precio que buscó no fue encontrado\n"
            end
    end
end

def leer()
    content = File.read("catalogo_productos.txt")
    lines = content.split("\n")
    print lines
    puts ""
    return lines
end

def agregar()
    puts "\nIngrese la información que desea agregar (ejemplo: clave, nombre, unidad, precio, promoción, categoría, subcategoría)"
    nuevo_producto=gets
    File.write("catalogo_productos.txt", nuevo_producto, mode:"a")
end

begin
    print "|-----------------------------------------------------|\n"
    print "     Bienvenido al Identificador de precios 3b's       \n"
    print "|-----------------------------------------------------|\n"
    print "Presione una tecla para continuar...\r"
    gets
    print "-----------------Catalogos de Producto-----------------\n\n"

    print "Selecciones una opción\n"
    print "1.- Generar un arreglo de un Producto:\n"
    print "2.- Generar un arreglo de Precios:\n"
    print "3.- Generar un arreglo de Precios con Impuestos:\n"
    print "4.- Ordenar un arreglo:\n"
    print "5.- Buscar un Producto en un arreglo:\n"
    print "6.- Busca un precio específico:\n"
    print "7.- Leer archivo de txt:\n"
    print "8.- Agregar registro a Archivo txt:\n"
    print "0.- Para salir del programa:\n"
    print "Qué acción quieres realizar: "



    opcion = gets.chomp.to_i

    case opcion
    when 1 then productos()
    when 2 then precios()
    when 3 then impuestos()
    when 4 then ordenar()
    when 5 then buscar()
    when 6 then buscar_precio()
    when 7 then leer()
    when 8 then agregar()
    else
        return 0
    end

end while (opcion!=0)
    



